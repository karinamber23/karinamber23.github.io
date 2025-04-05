'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/canvaskit.js": "86e461cf471c1640fd2b461ece4589df",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/chromium/canvaskit.js": "34beda9f39eb7d992d46125ca868dc61",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"index.html": "8f17190c53622e8f56384284992b2ea9",
"/": "8f17190c53622e8f56384284992b2ea9",
"assets/NOTICES": "57befb290caea091301f1f5274a2eb94",
"assets/assets/images/headshot.jpg": "0b64919f7e5a556f7030967912e16e2c",
"assets/assets/images/gilbertdrawing.png": "52a10858dc43aa2acbdc5d425fd3f4fd",
"assets/assets/images/cats/15.jpg": "a53c408cfd05ccf82ab226f53e923d2a",
"assets/assets/images/cats/19.jpg": "4f14f4b33cee8e7e4311b3665056f371",
"assets/assets/images/cats/18.jpg": "ea9fcb1dde6210171f57a419b11e8e99",
"assets/assets/images/cats/17.jpg": "5c42c8c3ec6cb0b889bafbc5e34d098c",
"assets/assets/images/cats/12.jpg": "719b2ca9240df4debdc6610512d606f4",
"assets/assets/images/cats/13.jpg": "e129f0cec87b5d266306ff8418be67d5",
"assets/assets/images/cats/9.jpg": "b4596712ed340788fafb9b2d7812031a",
"assets/assets/images/cats/4.jpg": "8007487afd8c70eb4fabb42c522f17be",
"assets/assets/images/cats/2.jpg": "97ec6e1810b54fd9f17f4d0e4073a266",
"assets/assets/images/cats/7.jpg": "17d1a886551648281cb1de33e8af85e2",
"assets/assets/images/cats/21.jpg": "806889682d93ef9edffd059fee0b5798",
"assets/assets/images/cats/14.jpg": "5efaa491528ca88b150b4eca22ea348f",
"assets/assets/images/cats/10.jpg": "5855eda57845e14a98b6586d3da89b9b",
"assets/assets/images/cats/6.jpg": "6d48a5bc909d355b8351eb2b6a18d341",
"assets/assets/images/cats/3.jpg": "9d6b94363b9e998ea28b989bf475a87a",
"assets/assets/images/cats/1.jpg": "aab0d7da2ee1c597096dc5f0f44c4625",
"assets/assets/images/cats/11.jpg": "d1ffc461d9e7d3839c203049910e43da",
"assets/assets/images/cats/8.jpg": "1c39f3426a9937b84e099081ec51ba4b",
"assets/assets/images/cats/16.jpg": "e096397143ddd953f0ab758f7c47ac83",
"assets/assets/images/cats/20.jpg": "b9e6465d16649f8555e2c86e1b256ec7",
"assets/assets/images/cats/5.jpg": "4a06bc67aff28e9fbc2c1598691b308d",
"assets/assets/images/cat300x300.jpg": "3af4156330b75ed4eabd773518cb61da",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "8691c5b0d0ae272d35eefd58336e3be1",
"assets/fonts/MaterialIcons-Regular.otf": "66192139c8715a0dcbdfd546ee6bbe01",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/AssetManifest.bin.json": "2e11ebc74ef690d168bb6f7bfe3c76eb",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "cdfb02dea76c7baa84be0f84d2214927",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "3ca5dc7621921b901d513cc1ce23788c",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "a2eb084b706ab40c90610942d98886ec",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/AssetManifest.json": "a8e539d538f8cb0c976ca9981f925276",
"version.json": "be84b7785cc0475fd293bc0c57f75add",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"main.dart.js": "185c8e6b1a02a54356983778e316715d",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/favicon.ico": "c7e0ca1570cb74ebba7688283be43271",
"icons/Icon-192.png": "d306a32ec984a96b000078d9e4c1da5a",
"icons/Icon-512.png": "fb7d864ea10fdcf60c60b163a6f79365",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"manifest.json": "e3cbb0b3c355a962ab9e681327383325",
"favicon.png": "52a10858dc43aa2acbdc5d425fd3f4fd",
"flutter_bootstrap.js": "9242c7d5060f03b38e60f7ca19d3253a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
