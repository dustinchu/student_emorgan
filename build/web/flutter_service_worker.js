'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "d437f1cbf3f5ac9b7a710fa814217dbf",
"index.html": "7e50fcdc6c76ea282ac9ac138f9f340c",
"/": "7e50fcdc6c76ea282ac9ac138f9f340c",
"main.dart.js": "31050cbd891524b374c7bd8e62621ba4",
"favicon.png": "bded570080bd67f70737d5b23cad022f",
"manifest.json": "6d49376a85b50a3cd7767ae88b717d5e",
"assets/AssetManifest.json": "fe3b3e38dcf2265ce301ac8dc5ef6b35",
"assets/NOTICES": "54ae5fddcdf3d7c4b94c23c69eef37dd",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/email.png": "2168f8b0eeb2494299c154d4e59ec38d",
"assets/assets/step5.png": "6b40b2774f84e3c9c52b49186e3be56d",
"assets/assets/step4.png": "5e0e8eadde0db1f6a6b758eb60497db9",
"assets/assets/step6.png": "2e870e21f54f6b8df533a1a9e7664f6e",
"assets/assets/step7.png": "c6ffa6f767c3dbc71d190b6d5030f513",
"assets/assets/step3.png": "162a066095f771b48f4ccff24283266a",
"assets/assets/step2.png": "e740ad391fcbaee3fc950794cb26e445",
"assets/assets/appbar_bk.png": "5f7611c322e556b1b5c56f9b47a248e4",
"assets/assets/step1.png": "52bed70b96878394e0e1ab4526c955e4",
"assets/assets/loding_bk.png": "9c5e9fa088f2a9446fc1dad467fa56e6",
"assets/assets/ig.png": "f156584c34fd4db111579d3b8f6cb09f",
"assets/assets/help.png": "d4cfcda6268db18930402e55b2c5aec0",
"assets/assets/logo.png": "2b1e5cff4ac3e9acda644a401e32c5d1",
"assets/assets/loding_icon.png": "e85a30e6b9ad1479709b8d03a613ef5c",
"assets/assets/backround_right.png": "69f0cc94aafcc8454d49b95440b74f4e",
"assets/assets/backround_left.png": "792bb0e91c8b97460a39e306051ef217",
"assets/assets/phone.png": "07c833529ca7152a17e04ae0a65bcc59",
"assets/assets/4.png": "e53b77a3d751d9e0f81311e2ae4d1b0e",
"assets/assets/successful.png": "c6f5cdb9d664dba9d345ede7929438e2",
"assets/assets/5.png": "0447f67fb7b70037460181ee358cbbac",
"assets/assets/icon_up.png": "0a86c2cfb6eeeca20cf7900327a5c2b1",
"assets/assets/feedback.png": "92f37b9897a9c89188f14b4c78a36508",
"assets/assets/2.png": "c493161dd2f5bbfbc6db24f0d033ccbf",
"assets/assets/3.png": "9c1a3fdb4e30e310c173bd2739e372ee",
"assets/assets/1.png": "e266543dcaf233d4d8e27efd11ed3a41",
"assets/assets/people.png": "b058ed134a4f5ca86842b319f53a1041"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey in Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
