'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "d437f1cbf3f5ac9b7a710fa814217dbf",
"index.html": "0879b04606b914acf5a26e92a613d731",
"/": "0879b04606b914acf5a26e92a613d731",
"main.dart.js": "b2ac2ab777e4749183e70c185978756b",
"favicon.png": "bded570080bd67f70737d5b23cad022f",
"icons/Icon-192.png": "42c2aa62a4a11c93b56bb73a70d570a3",
"icons/Icon-512.png": "5986ba0e4e756ec1c4ddd53e245b03d1",
"manifest.json": "6d49376a85b50a3cd7767ae88b717d5e",
"assets/AssetManifest.json": "94a40552e7a8a19be1cff00dbb02a20f",
"assets/NOTICES": "ed264296b38992839c5725ff4e12ca5a",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/email.png": "2168f8b0eeb2494299c154d4e59ec38d",
"assets/assets/step5.png": "6b40b2774f84e3c9c52b49186e3be56d",
"assets/assets/step4.png": "5e0e8eadde0db1f6a6b758eb60497db9",
"assets/assets/human_line.png": "ef62cbae557a922b3b7a5ef4602364d1",
"assets/assets/step6.png": "2e870e21f54f6b8df533a1a9e7664f6e",
"assets/assets/step7.png": "c6ffa6f767c3dbc71d190b6d5030f513",
"assets/assets/step3.png": "162a066095f771b48f4ccff24283266a",
"assets/assets/step2.png": "e740ad391fcbaee3fc950794cb26e445",
"assets/assets/appbar_bk.png": "5f7611c322e556b1b5c56f9b47a248e4",
"assets/assets/step1.png": "52bed70b96878394e0e1ab4526c955e4",
"assets/assets/obi_item.png": "3b2c446dfcede5346cabb74fe0defe22",
"assets/assets/buzzy_step4.png": "0e8347a465c6ecae9ad3eaddbc38cbe2",
"assets/assets/buzzy/60.png": "65470db06b79e9cb6145327e2d77de21",
"assets/assets/buzzy/48.png": "f45ae4801f50eb59ae4030511d8d2f41",
"assets/assets/buzzy/49.png": "7e1e06cb7d989c144a9eda892a2d3e88",
"assets/assets/buzzy/59.png": "7528502569ff7c8e1839e6fdea39ffd2",
"assets/assets/buzzy/58.png": "caea0e1e07a554508cd9ec2f6402a7f8",
"assets/assets/buzzy/8.png": "7d11c60b4146f236555bd5b4b6a324bb",
"assets/assets/buzzy/9.png": "e0f136a83d02f50d7172f3e94186bc55",
"assets/assets/buzzy/14.png": "33b646c7a5e900034c6485af5d1c0774",
"assets/assets/buzzy/28.png": "1be809e2f9898428d7da206d3164a5f7",
"assets/assets/buzzy/29.png": "006fd6459bc7a329b5279a69e0bbffe5",
"assets/assets/buzzy/15.png": "803a5a2750e3b89f648ab088d6e25cc8",
"assets/assets/buzzy/17.png": "d8a9e5dcbbf64539d271bac2bd83ee9d",
"assets/assets/buzzy/16.png": "0da92dbcb0fd7f99c9d1a61c28bd3e3c",
"assets/assets/buzzy/12.png": "35f92f25d35085e89af0ee77def776df",
"assets/assets/buzzy/13.png": "22e56958acb425e069f7e1c3d2b5e32f",
"assets/assets/buzzy/39.png": "ae7b11a954d21eadfd689ac6068225fb",
"assets/assets/buzzy/11.png": "4196ed6936bc7270a0230e0ad2af9a77",
"assets/assets/buzzy/10.png": "da4379a30f6749b08eebda08c55babd6",
"assets/assets/buzzy/38.png": "c996cb346b2431d95d66274bcd5fd5ce",
"assets/assets/buzzy/35.png": "435657aa2f58ef16aec657de24165c3e",
"assets/assets/buzzy/21.png": "c1ae07fa8ba57f492d3cbccc9f27b64f",
"assets/assets/buzzy/20.png": "4ab143569912351157fc5d681f4eadbf",
"assets/assets/buzzy/34.png": "708a55b4cdcaf39ce93507542af4829e",
"assets/assets/buzzy/22.png": "ae5d5a8c1193aeaa38be973a67068745",
"assets/assets/buzzy/36.png": "b92bdc1692038b7f950540c57cff256e",
"assets/assets/buzzy/37.png": "282b34c3e02d6e852cdd885b005ca46a",
"assets/assets/buzzy/23.png": "0bbfffbda12afee2f18a7e3b644c4c1c",
"assets/assets/buzzy/27.png": "3c1baeeeab46f7aa4e8b4653e7a90fbe",
"assets/assets/buzzy/33.png": "9ee5d636c1a9b471209dad21c965b353",
"assets/assets/buzzy/32.png": "84d95181c28d5376124a336e0cf1a963",
"assets/assets/buzzy/26.png": "2b5e484c4234134d8cb98eefc562ad4c",
"assets/assets/buzzy/18.png": "ab14562f36fd90fddbf192bde0aa9e3e",
"assets/assets/buzzy/30.png": "64e64b8124084a0b24d22c62cd303677",
"assets/assets/buzzy/24.png": "0287d8415776d202db2cc2dd5beea902",
"assets/assets/buzzy/25.png": "60881edbe9903f98fb022bca29c0a338",
"assets/assets/buzzy/31.png": "a8cac34f691fe118f8abf4c4a1043b18",
"assets/assets/buzzy/19.png": "f7301514b867cd215a2f1198d18dc436",
"assets/assets/buzzy/4.png": "f5f1ac5762d5b7e0d306fb8c6956bd27",
"assets/assets/buzzy/56.png": "e40cc78134636fdb6ee24a99feb568b3",
"assets/assets/buzzy/42.png": "2104a4be3024bbcbde70cbe11b53736b",
"assets/assets/buzzy/43.png": "210555b9f6d08e36b84dc821ce9165bf",
"assets/assets/buzzy/5.png": "bd69dc5a38c9b6265928c016352bde2e",
"assets/assets/buzzy/57.png": "0281a731f7da6e407327d743aba18b09",
"assets/assets/buzzy/41.png": "6b078d008eb1329c07007ecfea3d8791",
"assets/assets/buzzy/55.png": "38e4f22f3b38b6563843965d2e20dee3",
"assets/assets/buzzy/7.png": "ac2ed29f9e42d44d193050e3a72fa7a3",
"assets/assets/buzzy/54.png": "8dd0aef225125e6a2273da67c2a36ebd",
"assets/assets/buzzy/6.png": "fae85396571ae7011ee1f0a1aefa40f8",
"assets/assets/buzzy/40.png": "edaa50183c409ffc8b0aa475f4fbb274",
"assets/assets/buzzy/44.png": "8c53f6de363171a1a85f8282d2f561b7",
"assets/assets/buzzy/2.png": "96bdacaab4695e15244008c942b77016",
"assets/assets/buzzy/50.png": "cf03dc6df906dd3688c18e7109359be8",
"assets/assets/buzzy/3.png": "ab0b365d6502497184b5362f1cec5f60",
"assets/assets/buzzy/51.png": "98daf27bbc6c94f14f4ef8a4c94eb5b9",
"assets/assets/buzzy/45.png": "9c6f9ad9c17ce5426a38907c1b9f0602",
"assets/assets/buzzy/53.png": "dc51dedbf95da5862dc54e9ec3374b9b",
"assets/assets/buzzy/1.png": "5984cadc93dfc2b26061f6fd338894ee",
"assets/assets/buzzy/47.png": "7866508308e89e9f7cd9995467411615",
"assets/assets/buzzy/46.png": "45a563e99cf8b48bb85ea6260b86aeea",
"assets/assets/buzzy/52.png": "3ab95c291aa32f190802e41cf55f72fd",
"assets/assets/loding_bk.png": "9c5e9fa088f2a9446fc1dad467fa56e6",
"assets/assets/obi_human_b.png": "197d2d26ac8bc2927f9e230e8d8a1c73",
"assets/assets/ig.png": "f156584c34fd4db111579d3b8f6cb09f",
"assets/assets/human_b.png": "dc275a00ef7e32e1977177bcdf0c96a5",
"assets/assets/product_step3.png": "b5f2477c330004b725a9b7d0667e8a1d",
"assets/assets/product_step2.png": "f7e9f6773fd0336f1574b32a04739eab",
"assets/assets/shail_img1.png": "03579f8281f8a96df720696dab8dd581",
"assets/assets/shail_img3.png": "54d54b119c8fe47d7a439dc78ec0d3d7",
"assets/assets/human_a.png": "bd070a641908e389a300a5bb8b94aa19",
"assets/assets/help.png": "d4cfcda6268db18930402e55b2c5aec0",
"assets/assets/product_step1.png": "6816a8c4fd10a7f9688a920d25fbcb4d",
"assets/assets/shail_img2.png": "32a5e55bd4cdd980ed56272301de2414",
"assets/assets/logo.png": "2b1e5cff4ac3e9acda644a401e32c5d1",
"assets/assets/loding_icon.png": "e85a30e6b9ad1479709b8d03a613ef5c",
"assets/assets/backround_right.png": "69f0cc94aafcc8454d49b95440b74f4e",
"assets/assets/product_step5.png": "3717d7cccc23555f1413dfbf5ba75ce1",
"assets/assets/product_step4.png": "3638e89d8f8f9596235c943e48890b37",
"assets/assets/obi_sub_item.png": "000335c4885f1cb9efc6960894b4967b",
"assets/assets/backround_left.png": "792bb0e91c8b97460a39e306051ef217",
"assets/assets/shali_item.png": "cc817fc2f1c38d809b0152746677e89c",
"assets/assets/phone.png": "07c833529ca7152a17e04ae0a65bcc59",
"assets/assets/shali_sub_item.png": "9d32b63f377a968f2f7f68a69ab0199d",
"assets/assets/4.png": "e53b77a3d751d9e0f81311e2ae4d1b0e",
"assets/assets/buzzy_img2.png": "f950d763268496b90fffb6acdd723307",
"assets/assets/successful.png": "c6f5cdb9d664dba9d345ede7929438e2",
"assets/assets/5.png": "0447f67fb7b70037460181ee358cbbac",
"assets/assets/icon_up.png": "0a86c2cfb6eeeca20cf7900327a5c2b1",
"assets/assets/obi_step5.png": "b97fd4baaad6f7f62323f1e164cd77d0",
"assets/assets/buzzy_img1.png": "ac1e5f10e00e8a2e0f7fd03dc4ce1385",
"assets/assets/buzzy_item.png": "28a602a5ddd66f6ca302d2fae1857c45",
"assets/assets/buzzy_human.png": "8e3bc8d1b96f6676980041bd94c3a72e",
"assets/assets/feedback.png": "92f37b9897a9c89188f14b4c78a36508",
"assets/assets/2.png": "c493161dd2f5bbfbc6db24f0d033ccbf",
"assets/assets/3.png": "9c1a3fdb4e30e310c173bd2739e372ee",
"assets/assets/1.png": "e266543dcaf233d4d8e27efd11ed3a41",
"assets/assets/people.png": "b058ed134a4f5ca86842b319f53a1041",
"assets/assets/obi_step2.png": "b3691d6307fca752e9c3a80ae1df0bb6"
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
