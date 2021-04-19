'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "d437f1cbf3f5ac9b7a710fa814217dbf",
"index.html": "8a1779a214f196b2449ed871c2720bfc",
"/": "8a1779a214f196b2449ed871c2720bfc",
"main.dart.js": "febc08880f82a55f8b3dfd83057948b5",
"favicon.png": "bded570080bd67f70737d5b23cad022f",
"icons/Icon-192.png": "42c2aa62a4a11c93b56bb73a70d570a3",
"icons/Icon-512.png": "5986ba0e4e756ec1c4ddd53e245b03d1",
"manifest.json": "6d49376a85b50a3cd7767ae88b717d5e",
"assets/AssetManifest.json": "e9861f501991e05edb280408cc766dbe",
"assets/NOTICES": "004fa2a467c75eeb10e84873610803e8",
"assets/FontManifest.json": "7d3b6f24579fc166a1404882e0b05c87",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/flutter_markdown/assets/logo.png": "67642a0b80f3d50277c44cde8f450e50",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/patch_r_shali_left.png": "e81161612b9bf1c3a6934eec03f9d0b2",
"assets/assets/info_obi_and_shali_right.png": "6639ef7ebd43839a4d05c29d04d4dbc5",
"assets/assets/email.png": "2168f8b0eeb2494299c154d4e59ec38d",
"assets/assets/buzzy_human_a.png": "3e2668b3543a791cde38a606eba527a5",
"assets/assets/step5.png": "6b40b2774f84e3c9c52b49186e3be56d",
"assets/assets/order_people_left2.png": "4afcf31306b2f9e09614beb05807fce7",
"assets/assets/perple.png": "86ea39198f2396a4d2af0ba86f367938",
"assets/assets/info_buzzy_and_buzzy_right.png": "84430eebe1f8745454f5eeccc4a3e6f5",
"assets/assets/step4.png": "5e0e8eadde0db1f6a6b758eb60497db9",
"assets/assets/human_line.png": "ef62cbae557a922b3b7a5ef4602364d1",
"assets/assets/patch_r_obi_left.png": "4d0b796517a91fb7f66f3c89630ad4c9",
"assets/assets/info_shali_and_obi_right.png": "a8b2ca2d821de643562c250b966627ef",
"assets/assets/buzzy_human_b.png": "c248f57a78df2999239f7e06f87bca59",
"assets/assets/step6.png": "2e870e21f54f6b8df533a1a9e7664f6e",
"assets/assets/order_people_left1.png": "f9d016b7252231d08bd8f1ac6c47362c",
"assets/assets/order_left_backround.png": "dd8241e69d4e438202ab64075b05c2c3",
"assets/assets/step7.png": "c6ffa6f767c3dbc71d190b6d5030f513",
"assets/assets/info_buzzy_and_buzzy_left.png": "57c2db4cb257a5c208eae9af958105c2",
"assets/assets/patch_shali_and_shali_right.png": "7f1e427a2a225877402d1eba6fc83826",
"assets/assets/step3.png": "162a066095f771b48f4ccff24283266a",
"assets/assets/html_3dview_icon.png": "56d49da68248191945e0cc1c853af1bd",
"assets/assets/step2.png": "e740ad391fcbaee3fc950794cb26e445",
"assets/assets/order_appbar.png": "b5f613b1677f89cdf3007179d74e6732",
"assets/assets/info_obi_and_obi_right.png": "114a5cbda41764cdf76179ca484cf9b6",
"assets/assets/patch_l_obi_left.png": "38a6c136cfa4ca62a11c06f52da09ba4",
"assets/assets/appbar_bk.png": "5f7611c322e556b1b5c56f9b47a248e4",
"assets/assets/video_icon_pause.png": "dbed26ab50b6f6f1db3394b64b0dd5f4",
"assets/assets/info_obi_and_obi_left.png": "7bfaaf165e3126fba07a3c1e0205a288",
"assets/assets/order_shali.png": "838a280c40b68c8e06f724058187168b",
"assets/assets/step1.png": "52bed70b96878394e0e1ab4526c955e4",
"assets/assets/big_banner.jpg": "a1a5933b0b39b08c09e98ae7e7bae2f4",
"assets/assets/big_banner.png": "33de09718b324bfbdfed6e6670ec9a8e",
"assets/assets/patch_obi_and_shali_right.png": "d2cead8f5e57f107ef967d8dee0653be",
"assets/assets/patch_obi_and_obi_left.png": "b7e2c4292a0483e097060fa6827fffb7",
"assets/assets/video_play_icon.png": "5b85a2bae07361dc955251714c1b0c3d",
"assets/assets/info_shali_and_shali_left.png": "0f1473987013a772ed1dbae3ada6ae79",
"assets/assets/patch_shali_and_obi_left.png": "72e549d761aa061fb6f2dc704750ffb3",
"assets/assets/patch_shali_and_obi_right.png": "445fee68e069f81ec766ada6fc766f4f",
"assets/assets/video_icon_down.png": "e3004a509fffb1342fbbeae4055950e6",
"assets/assets/obi_item.png": "3b2c446dfcede5346cabb74fe0defe22",
"assets/assets/order_people_right2.png": "f7bbb70fda9d665b9a5e9ac9b18bdcdc",
"assets/assets/info_obi_and_shali_left.png": "9cf920191bdf0fdf97bfb0561280e1a8",
"assets/assets/obi_human_a.png": "3760ff433bdc5a84bb2c435b0e34ca26",
"assets/assets/patch_r_shali_right.png": "725e9066b073aa1b73579642d6b42def",
"assets/assets/patch_shali_and_shali_left.png": "182abf03bbcefccdddfc3b644b2a1efa",
"assets/assets/patch_l_obi_right.png": "9e273d69d69bb3222992f9393a228d6e",
"assets/assets/buzzy_step4.png": "0e8347a465c6ecae9ad3eaddbc38cbe2",
"assets/assets/loding_bk.png": "9c5e9fa088f2a9446fc1dad467fa56e6",
"assets/assets/patch_buzzy_left.png": "9f09b5b850c5599db50e9d3e731e363a",
"assets/assets/order_people_right1.png": "bcc0e2c20d23921cc74b5f1d38435a86",
"assets/assets/obi_human_b.png": "6feb137821832f25941423a2a31c3a97",
"assets/assets/order_obi.png": "a6c9041cfcb85433aaec44bf7ce848ac",
"assets/assets/ig.png": "f156584c34fd4db111579d3b8f6cb09f",
"assets/assets/info_shali_and_shali_right.png": "53e320669ca379f5c275a3a4332d91b8",
"assets/assets/human_b.png": "5804b8dd72dcceb8e108d09fb9210ce0",
"assets/assets/product_step3.png": "b5f2477c330004b725a9b7d0667e8a1d",
"assets/assets/patch_l_shali_left.png": "0ace6d40e3d613cec41e38c629f100c1",
"assets/assets/product_step2.png": "f7e9f6773fd0336f1574b32a04739eab",
"assets/assets/shail_img1.png": "44d09a9a4533b67b939656c919d6d779",
"assets/assets/shail_img3.png": "b9d10bb53df15cb3c0a752cd8c72f0ab",
"assets/assets/human_a.png": "50e950d72de159b1a3e056df96ddea5c",
"assets/assets/patch_init.png": "bfb5167c526f8e674cf7c5dc88f3542f",
"assets/assets/help.png": "d4cfcda6268db18930402e55b2c5aec0",
"assets/assets/patch_buzzy_right.png": "d8d89c7f6396a8ce47d106905f74ed2a",
"assets/assets/product_step1.png": "6816a8c4fd10a7f9688a920d25fbcb4d",
"assets/assets/shail_img2.png": "d703c67f1c737192eb86f2adcd70e1c9",
"assets/assets/logo.png": "294097b7b2f1349eeb56fc11c9d15857",
"assets/assets/order_people.png": "ae602a84564a591c560e773e568e64aa",
"assets/assets/loding_icon.png": "e85a30e6b9ad1479709b8d03a613ef5c",
"assets/assets/backround_right.png": "69f0cc94aafcc8454d49b95440b74f4e",
"assets/assets/product_step5.png": "3717d7cccc23555f1413dfbf5ba75ce1",
"assets/assets/product_step4.png": "3638e89d8f8f9596235c943e48890b37",
"assets/assets/order_information_right_backround.png": "edaf68b021646f24b77436798a1185bf",
"assets/assets/obi_sub_item.png": "000335c4885f1cb9efc6960894b4967b",
"assets/assets/backround_left.png": "792bb0e91c8b97460a39e306051ef217",
"assets/assets/shali_item.png": "cc817fc2f1c38d809b0152746677e89c",
"assets/assets/phone.png": "07c833529ca7152a17e04ae0a65bcc59",
"assets/assets/shali_sub_item.png": "d530c61cfaf28657d55b5f4835b8610c",
"assets/assets/play6.png": "c3972ba0b25e8053667d35089515b45f",
"assets/assets/buzzy_img2.png": "f950d763268496b90fffb6acdd723307",
"assets/assets/play7.png": "ec91e97212534c897b36bbd0537160b4",
"assets/assets/successful.png": "c6f5cdb9d664dba9d345ede7929438e2",
"assets/assets/icon_up.png": "0a86c2cfb6eeeca20cf7900327a5c2b1",
"assets/assets/patch_obi_and_shali_left.png": "977f6c021a3b4ddfc059c28efb9159bd",
"assets/assets/obi_step5.png": "b97fd4baaad6f7f62323f1e164cd77d0",
"assets/assets/order_buzzy.png": "5cb6579360b937c0f4705373d9538a91",
"assets/assets/play5.png": "c1a51002b94c919ef9259ff0a72e154d",
"assets/assets/buzzy_img1.png": "ac1e5f10e00e8a2e0f7fd03dc4ce1385",
"assets/assets/patch_obi_and_obi_right.png": "770efd7c549718e3e801d6847eb43954",
"assets/assets/buzzy_item.png": "28a602a5ddd66f6ca302d2fae1857c45",
"assets/assets/big_banner_backroung.png": "2bc029533c0ad1f9d452df4989869527",
"assets/assets/play4.png": "44f0804b81ca0d658d41bb3a61d541b7",
"assets/assets/fonts/Beware.ttf": "89757901a50f65634aed49554f69d993",
"assets/assets/buzzy_human.png": "8e3bc8d1b96f6676980041bd94c3a72e",
"assets/assets/patch_r_obi_right.png": "35e1d60585a8fc9e0bccb7d82830bc66",
"assets/assets/patch_l_shali_right.png": "7ab632a1da3f9a3173712c0cc26b1d15",
"assets/assets/info_shali_and_obi_left.png": "9974bd864017aab8d514b0da6f04c6a6",
"assets/assets/feedback.png": "92f37b9897a9c89188f14b4c78a36508",
"assets/assets/play1.png": "0740dca73cbfe5332aaa0eff4dfd2e63",
"assets/assets/play3.png": "92be8299e36a109296dea272a0604653",
"assets/assets/play2.png": "efdf46f091a07ab6138b239ce16beab4",
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
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
  for (var resourceKey of Object.keys(RESOURCES)) {
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
