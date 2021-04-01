'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "d437f1cbf3f5ac9b7a710fa814217dbf",
"index.html": "9a7164ca02b84e8c7aea3e655133349a",
"/": "9a7164ca02b84e8c7aea3e655133349a",
"main.dart.js": "eacc3c915eb928fbc7acfca8d5418256",
"favicon.png": "bded570080bd67f70737d5b23cad022f",
"icons/Icon-192.png": "42c2aa62a4a11c93b56bb73a70d570a3",
"icons/Icon-512.png": "5986ba0e4e756ec1c4ddd53e245b03d1",
"manifest.json": "6d49376a85b50a3cd7767ae88b717d5e",
"assets/AssetManifest.json": "d169b774c443559877d3323ea8d92b55",
"assets/NOTICES": "fb950103d91a813444572d5585c990d7",
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
"assets/assets/perple.png": "59f66649e543bc5497cbdfc1eb2afb48",
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
"assets/assets/html_3dview_icon.png": "dc42fa149d47a49ff3518b75017cb511",
"assets/assets/step2.png": "e740ad391fcbaee3fc950794cb26e445",
"assets/assets/order_appbar.png": "b5f613b1677f89cdf3007179d74e6732",
"assets/assets/info_obi_and_obi_right.png": "114a5cbda41764cdf76179ca484cf9b6",
"assets/assets/patch_l_obi_left.png": "38a6c136cfa4ca62a11c06f52da09ba4",
"assets/assets/appbar_bk.png": "5f7611c322e556b1b5c56f9b47a248e4",
"assets/assets/info_obi_and_obi_left.png": "7bfaaf165e3126fba07a3c1e0205a288",
"assets/assets/order_shali.png": "838a280c40b68c8e06f724058187168b",
"assets/assets/step1.png": "52bed70b96878394e0e1ab4526c955e4",
"assets/assets/big_banner.png": "10966cfda6b03d2424d38ad0929e414b",
"assets/assets/patch_obi_and_shali_right.png": "d2cead8f5e57f107ef967d8dee0653be",
"assets/assets/patch_obi_and_obi_left.png": "b7e2c4292a0483e097060fa6827fffb7",
"assets/assets/info_shali_and_shali_left.png": "0f1473987013a772ed1dbae3ada6ae79",
"assets/assets/patch_shali_and_obi_left.png": "72e549d761aa061fb6f2dc704750ffb3",
"assets/assets/patch_shali_and_obi_right.png": "445fee68e069f81ec766ada6fc766f4f",
"assets/assets/obi_item.png": "3b2c446dfcede5346cabb74fe0defe22",
"assets/assets/order_people_right2.png": "f7bbb70fda9d665b9a5e9ac9b18bdcdc",
"assets/assets/info_obi_and_shali_left.png": "9cf920191bdf0fdf97bfb0561280e1a8",
"assets/assets/obi_human_a.png": "3760ff433bdc5a84bb2c435b0e34ca26",
"assets/assets/patch_r_shali_right.png": "725e9066b073aa1b73579642d6b42def",
"assets/assets/patch_shali_and_shali_left.png": "182abf03bbcefccdddfc3b644b2a1efa",
"assets/assets/patch_l_obi_right.png": "9e273d69d69bb3222992f9393a228d6e",
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
"assets/assets/obi/60.png": "02d65588f503f60602f9b4daf03e9db4",
"assets/assets/obi/48.png": "6c4025ca84ca8a503238faa649cbb9c0",
"assets/assets/obi/49.png": "f5e73bcd639ef0d593d7ecf129e21cdf",
"assets/assets/obi/59.png": "dff7b94f3f7e8f62452fde1d0b9c5385",
"assets/assets/obi/58.png": "ee95f643c0ce86d8e876326e3afdbfcc",
"assets/assets/obi/8.png": "ccee1dd494e261128b0e26ce80a8dd4f",
"assets/assets/obi/9.png": "d417327791f150a94c4d1d6c83cf51d9",
"assets/assets/obi/14.png": "835440ef62672845c026a453a1494834",
"assets/assets/obi/28.png": "cd56ef2b041a5532729f6dbedf5c095a",
"assets/assets/obi/29.png": "f29e3e2ecc223c688853e505561b58e5",
"assets/assets/obi/15.png": "2d6b9913f753d4e6be76c10e5e12796a",
"assets/assets/obi/17.png": "632c3a090d7f9bd90e3494af48601895",
"assets/assets/obi/16.png": "844f3f92c2b250c8a27bfd03d97604d5",
"assets/assets/obi/12.png": "1e93f340c579c91f7438049bfa4bd5ee",
"assets/assets/obi/13.png": "067df55971c91fb854b9c970658d7d8e",
"assets/assets/obi/39.png": "dce4dc4f3bc09ee4d39a944d6676662e",
"assets/assets/obi/11.png": "14bddc04dd066824bd45473b6fa85e7c",
"assets/assets/obi/10.png": "ff412894de4675c0486ae7d55958dac7",
"assets/assets/obi/38.png": "90c3483c98e5dabee98b1e700337cb66",
"assets/assets/obi/35.png": "a85ebffd157a5337abf8799cc0e604d9",
"assets/assets/obi/21.png": "42d5c70561c72f346a5470adeaf4d280",
"assets/assets/obi/20.png": "537460cb42a24285d1d0a1245ba8a818",
"assets/assets/obi/34.png": "37c23db04c135a6da994aa4ec5c830d4",
"assets/assets/obi/22.png": "b811b36dc8ea9c918481af401d8596af",
"assets/assets/obi/36.png": "5d2ea4a05dcd8cd974be5aca1b49fc0a",
"assets/assets/obi/37.png": "4793b7ae39a26696bd4dc276cd3932c0",
"assets/assets/obi/23.png": "3f8d52dde3aa57dc697ee733d26e4a41",
"assets/assets/obi/27.png": "9e10f13f36fd728d4c589041e5e2dc75",
"assets/assets/obi/33.png": "d61671733ed0bb38ad4e09a8938abbeb",
"assets/assets/obi/32.png": "5dafb4c6d84febc0276bcf283dd18d1c",
"assets/assets/obi/26.png": "071a3deb677c1c42eba80537d7a2d83a",
"assets/assets/obi/18.png": "46b0ac068a8e2926ce01b1400dc68686",
"assets/assets/obi/30.png": "f9f01974de95a14dd2d14f10846f4502",
"assets/assets/obi/24.png": "1828d374d0910481460eb31eac6cc815",
"assets/assets/obi/25.png": "85e9d37294008789f94dc77967d6d19b",
"assets/assets/obi/31.png": "24b974b5979700cfd9d55c56a3064389",
"assets/assets/obi/19.png": "fe93fa43b664b4f04556a32215fbe2a2",
"assets/assets/obi/4.png": "3d1cb5e01bc9dd393e508f7ec596cb81",
"assets/assets/obi/56.png": "ce9658ca414b26eb2325ff791f6ee657",
"assets/assets/obi/42.png": "e382c9705e956c5b3fcce0f963462f15",
"assets/assets/obi/43.png": "8c9e5260497af6301dadb6de3481b36d",
"assets/assets/obi/5.png": "e3c7658e6941f487917da43bb1f32788",
"assets/assets/obi/57.png": "68b13330306c39b651699f89485009fa",
"assets/assets/obi/41.png": "c36deb082a24d5edd28ad96a07a35b50",
"assets/assets/obi/55.png": "2067f36dce88f8e265d2c7754f48fb36",
"assets/assets/obi/7.png": "cd2a3e357663991e7a0669fa6399c1f5",
"assets/assets/obi/54.png": "699a1e9679eaed6c9d99d32571337f93",
"assets/assets/obi/6.png": "d99f2b021c66eb8dfc859aad1a81d7d5",
"assets/assets/obi/40.png": "f107fb989a05a5cfce1cc27a7b76fca5",
"assets/assets/obi/44.png": "1176558cd4391ce0a5f6baea02304217",
"assets/assets/obi/2.png": "9fc957a90b1771a8dc0028fd459d1da0",
"assets/assets/obi/50.png": "a0659e896d89316f52f4c0ea40ac168b",
"assets/assets/obi/3.png": "c4bb0be177090047ccefa00fc6525b0c",
"assets/assets/obi/51.png": "ecb981b88a1f8dd3d54ecd9dd5d6fad2",
"assets/assets/obi/45.png": "46048e564699c885ae330fee9619ef2c",
"assets/assets/obi/53.png": "21e563be16f9d443691b6bcd6b069b84",
"assets/assets/obi/1.png": "a918014c9c2b01fe67d9f26770a9753a",
"assets/assets/obi/47.png": "743fa857f9e14d2d340b447a5ff72e8b",
"assets/assets/obi/46.png": "d451160df515af0f322f57d47856c694",
"assets/assets/obi/52.png": "9cff2b0fae7ac9230b92bfc31e57cd12",
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
"assets/assets/shali/60.png": "5c9cc23c6edac2a8ec5c537fb252b144",
"assets/assets/shali/48.png": "6cb3d088643cae031ddf8e9285c465ed",
"assets/assets/shali/49.png": "ef37181b15d5bc96513bcf4d6ac88ddf",
"assets/assets/shali/59.png": "aa5911de34e0e0f769d9e3cedd65fa96",
"assets/assets/shali/58.png": "6cb06ea6807410a4b5de5d967e4196f5",
"assets/assets/shali/8.png": "6a762097f5874c2dac725f2c37bf95be",
"assets/assets/shali/9.png": "978bc0d6edf1d4b3240f6b4f4075b3e9",
"assets/assets/shali/14.png": "6168b27d4a0c4064e96ffa17f39e1fde",
"assets/assets/shali/28.png": "06a6f548c626f17b6a85d0630cfc2af0",
"assets/assets/shali/29.png": "e23ba68388fff4776a4ae92f0c4cbbcd",
"assets/assets/shali/15.png": "c086497586af121537fa731f94478338",
"assets/assets/shali/17.png": "060fcc53d44279f36efae47b81f4ff2d",
"assets/assets/shali/16.png": "72438e2fb943a048eac28bb42b64bad9",
"assets/assets/shali/12.png": "b9a4b1adcc327651fae0bcdcd743964b",
"assets/assets/shali/13.png": "23abfe7eb00a2ce44737ffa976e47d98",
"assets/assets/shali/39.png": "4413e9644bc6d56e85cc043054e13e16",
"assets/assets/shali/11.png": "96e66b5b59d52ebcc8080689a95ab74d",
"assets/assets/shali/10.png": "650c6cebd0bd6669989cbf647e95f5ab",
"assets/assets/shali/38.png": "b9afb23a8e7a3a0af0e1d9f244999b48",
"assets/assets/shali/35.png": "8ca09408497aa47ffafd0ebd65e918cf",
"assets/assets/shali/21.png": "52b9d9020ca419d9ffe4943fd1b15345",
"assets/assets/shali/20.png": "daef5dc2c40a068eb148b700cb2d597a",
"assets/assets/shali/34.png": "9208658e3d75671af8567adaecd2e6d3",
"assets/assets/shali/22.png": "97c87bb0bc43dd413f8f0d021831c487",
"assets/assets/shali/36.png": "22db7b69fdbecb83cdc29ea0b0e7bb35",
"assets/assets/shali/37.png": "67f9e94ad259b9adbfc92de8c1ce079f",
"assets/assets/shali/23.png": "353e0044ceeeab39145b0bab94d494a0",
"assets/assets/shali/27.png": "7695141f3b018f702a3f977f52ec0ede",
"assets/assets/shali/33.png": "5468c8902684dec681894d32159e04ce",
"assets/assets/shali/32.png": "b416f0902062cd8e633d7649df1c7206",
"assets/assets/shali/26.png": "4d59bd42cd37126b0b310b3693a91af6",
"assets/assets/shali/18.png": "b438057fc9df3a66b97d0bc4ec8374b9",
"assets/assets/shali/30.png": "885f4344a29b9afccba9d20573e1af21",
"assets/assets/shali/24.png": "11bd00dde1016f6e8eed57f87c1776e6",
"assets/assets/shali/25.png": "de98a0b9582b121202ef94988c0665a4",
"assets/assets/shali/31.png": "660c35e88e8d7c524553a00b3023af25",
"assets/assets/shali/19.png": "c3b44c9ce56338c1a6c46df51c7555ac",
"assets/assets/shali/4.png": "f0499197e7cecdf40b9c516da7af44c3",
"assets/assets/shali/56.png": "7b13bfd5eee66d9aff6aa7fad7489000",
"assets/assets/shali/42.png": "002b4879998be94b8f74c35b21a7a7ed",
"assets/assets/shali/43.png": "96a6c7a17af96d245c952fa5434a7572",
"assets/assets/shali/5.png": "435fd093299774dce9bca45be530eac8",
"assets/assets/shali/57.png": "22c5da1756c0593e6a9ce5e3db68a5e6",
"assets/assets/shali/41.png": "57b1f9c28a2f3c29e7966344b7c39e83",
"assets/assets/shali/55.png": "30629c9402fe32cbaf18e42a07b5034d",
"assets/assets/shali/7.png": "b2ce262dc1a365ef32428edecea7b3a3",
"assets/assets/shali/54.png": "a5ba01862b89036da54bce2f846dbb1e",
"assets/assets/shali/6.png": "11f6912414bc7df8fd0f5d77f6633859",
"assets/assets/shali/40.png": "ef052a0365c24e7598c082e67d84c26a",
"assets/assets/shali/44.png": "1738d3639a98fde55b2b098e3f72cd0c",
"assets/assets/shali/2.png": "336b917a88ac274a974699502ad963d2",
"assets/assets/shali/50.png": "6c667b3950891da6205e0a45d519b8a5",
"assets/assets/shali/3.png": "71b422968f500f9906ae1fdd55ef0afd",
"assets/assets/shali/51.png": "911f43b66eb5f69d458f904c58408f1e",
"assets/assets/shali/45.png": "9a423c006f9e1c38b2e444ccf8121902",
"assets/assets/shali/53.png": "f84c92c9fd6d750cd2a071069207d618",
"assets/assets/shali/1.png": "512c2f55c85accd10a61ace429851877",
"assets/assets/shali/47.png": "9ea044b6bf8cbb7f94ee62e39d70326d",
"assets/assets/shali/46.png": "b587128b0af3fbe2a15fd4f3ad4efdf1",
"assets/assets/shali/52.png": "2a0de2261878fd17b1fd270c8008e880",
"assets/assets/play6.png": "123e2474365c5de1bd9ca8dc4183b837",
"assets/assets/buzzy_img2.png": "f950d763268496b90fffb6acdd723307",
"assets/assets/play7.png": "bce38d429cd659d759da3d2b9943a595",
"assets/assets/successful.png": "c6f5cdb9d664dba9d345ede7929438e2",
"assets/assets/icon_up.png": "0a86c2cfb6eeeca20cf7900327a5c2b1",
"assets/assets/patch_obi_and_shali_left.png": "977f6c021a3b4ddfc059c28efb9159bd",
"assets/assets/obi_step5.png": "b97fd4baaad6f7f62323f1e164cd77d0",
"assets/assets/order_buzzy.png": "5cb6579360b937c0f4705373d9538a91",
"assets/assets/play5.png": "eed59bb9734f1f115b1b4fe4c80cfd5b",
"assets/assets/buzzy_img1.png": "ac1e5f10e00e8a2e0f7fd03dc4ce1385",
"assets/assets/patch_obi_and_obi_right.png": "770efd7c549718e3e801d6847eb43954",
"assets/assets/buzzy_item.png": "28a602a5ddd66f6ca302d2fae1857c45",
"assets/assets/big_banner_backroung.png": "2bc029533c0ad1f9d452df4989869527",
"assets/assets/play4.png": "328ecf3877f2aa8abaeeab772ad5c18d",
"assets/assets/fonts/Beware.ttf": "89757901a50f65634aed49554f69d993",
"assets/assets/buzzy_human.png": "8e3bc8d1b96f6676980041bd94c3a72e",
"assets/assets/patch_r_obi_right.png": "35e1d60585a8fc9e0bccb7d82830bc66",
"assets/assets/patch_l_shali_right.png": "7ab632a1da3f9a3173712c0cc26b1d15",
"assets/assets/info_shali_and_obi_left.png": "9974bd864017aab8d514b0da6f04c6a6",
"assets/assets/feedback.png": "92f37b9897a9c89188f14b4c78a36508",
"assets/assets/play1.png": "279a476da33600b2e830b75a2826a408",
"assets/assets/play3.png": "8c6944069f02bca292bcc3532d7401b2",
"assets/assets/play2.png": "e2990a2af79c688d777605306d7054a7",
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
