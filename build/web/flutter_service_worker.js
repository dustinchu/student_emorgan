'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "d437f1cbf3f5ac9b7a710fa814217dbf",
"index.html": "576a0cf30e3168558d20d995429ec2b5",
"/": "576a0cf30e3168558d20d995429ec2b5",
"main.dart.js": "dde30209005174ee8761b2a7f4ba0a92",
"favicon.png": "bded570080bd67f70737d5b23cad022f",
"icons/Icon-192.png": "42c2aa62a4a11c93b56bb73a70d570a3",
"icons/Icon-512.png": "5986ba0e4e756ec1c4ddd53e245b03d1",
"manifest.json": "6d49376a85b50a3cd7767ae88b717d5e",
"assets/AssetManifest.json": "bca1256d19a74e1d8204eb5ee30c8431",
"assets/NOTICES": "bd69a89b68bdcab46455c2d06df89acc",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.css": "5a8d0222407e388155d7d1395a75d5b9",
"assets/packages/flutter_inappwebview/t_rex_runner/t-rex.html": "16911fcc170c8af1c5457940bd0bf055",
"assets/packages/flutter_markdown/assets/logo.png": "67642a0b80f3d50277c44cde8f450e50",
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
"assets/assets/buzzy/instructions.html": "f68b6b9c5a3ce83c892a04f09cfb725a",
"assets/assets/buzzy/27.png": "3c1baeeeab46f7aa4e8b4653e7a90fbe",
"assets/assets/buzzy/33.png": "9ee5d636c1a9b471209dad21c965b353",
"assets/assets/buzzy/32.png": "84d95181c28d5376124a336e0cf1a963",
"assets/assets/buzzy/26.png": "2b5e484c4234134d8cb98eefc562ad4c",
"assets/assets/buzzy/18.png": "ab14562f36fd90fddbf192bde0aa9e3e",
"assets/assets/buzzy/30.png": "64e64b8124084a0b24d22c62cd303677",
"assets/assets/buzzy/24.png": "0287d8415776d202db2cc2dd5beea902",
"assets/assets/buzzy/buzzy.151/0_9.png": "38b6e6107e78baf75bea75888f91d8cd",
"assets/assets/buzzy/buzzy.151/0_18.png": "f5ab9cd943a99b911ba8508e29b62cb6",
"assets/assets/buzzy/buzzy.151/0_30.png": "0bccf63edb6efe1567c86bf2538001be",
"assets/assets/buzzy/buzzy.151/0_24.png": "b9d289888f126b26d253c61ba74b63f2",
"assets/assets/buzzy/buzzy.151/0_25.png": "99476278729c75dbbc595ad3eb77044d",
"assets/assets/buzzy/buzzy.151/0_31.png": "688651081ce7664dff164ad233d38e78",
"assets/assets/buzzy/buzzy.151/0_19.png": "16b3f11e49e2e89fe0bdbfc8edab51e4",
"assets/assets/buzzy/buzzy.151/0_8.png": "4ad5ffcb32d5f19a20fbdd020e0ecdd4",
"assets/assets/buzzy/buzzy.151/0_27.png": "5b95810857ef1a976d6198fec5f3dd57",
"assets/assets/buzzy/buzzy.151/0_33.png": "7bb957d7493e744a4bbf09c3932f9f75",
"assets/assets/buzzy/buzzy.151/0_32.png": "d784131a9d1e7ef5f9afa9228ee3d22e",
"assets/assets/buzzy/buzzy.151/0_26.png": "184d54ed2a6062e97d590de80ec7e62c",
"assets/assets/buzzy/buzzy.151/0_22.png": "ee0a0c9beb5dd435b75fc00e641dce1b",
"assets/assets/buzzy/buzzy.151/0_36.png": "4fc8cb8031aa3ec60d5004b83e9ecd09",
"assets/assets/buzzy/buzzy.151/0_37.png": "09b7d5a5935bd570c2d7a890dd619124",
"assets/assets/buzzy/buzzy.151/0_23.png": "f6cef981cc368753acdbbb7eaf1ef596",
"assets/assets/buzzy/buzzy.151/0_35.png": "4225dd711d73f0bcc6106e402f12d250",
"assets/assets/buzzy/buzzy.151/0_21.png": "bdd5e0e4c60b1118b4740d6166964c99",
"assets/assets/buzzy/buzzy.151/0_20.png": "f86dae77bcfadd409e3faf5c06292365",
"assets/assets/buzzy/buzzy.151/0_34.png": "9f568a1acddc9e9964710569da7347ea",
"assets/assets/buzzy/buzzy.151/0_53.png": "fd5cc9be3d812969d93ccc315f673d9c",
"assets/assets/buzzy/buzzy.151/0_47.png": "45056f96c7b024db33e5b46134a4ad03",
"assets/assets/buzzy/buzzy.151/0_46.png": "58c4a100b2eeea77ee12846b22ecd8c8",
"assets/assets/buzzy/buzzy.151/0_52.png": "b1547b4dac0a1a4b7683776fb1f1c7c3",
"assets/assets/buzzy/buzzy.151/0_44.png": "64b78abe6c8070b6cbc806d8afef0f58",
"assets/assets/buzzy/buzzy.151/0_50.png": "34db34dc54b06bfb495e45bcba31b7f2",
"assets/assets/buzzy/buzzy.151/0_51.png": "a04297455f79db91527b61af1225276f",
"assets/assets/buzzy/buzzy.151/0_45.png": "8f7d5c3c1013175db03c021d0ad6d612",
"assets/assets/buzzy/buzzy.151/0_41.png": "08ce98c692a6bbfa0c69e745618b2b79",
"assets/assets/buzzy/buzzy.151/0_55.png": "7e979cb5df57378d63d8eeaaf4a401e7",
"assets/assets/buzzy/buzzy.151/0_54.png": "464dff07025a4bb9d6e071b4cee811bd",
"assets/assets/buzzy/buzzy.151/0_40.png": "da80c9bfbed3688176a38dbf9201dd5a",
"assets/assets/buzzy/buzzy.151/0_56.png": "69f1104b6a2ad0ffe3a69689ab885685",
"assets/assets/buzzy/buzzy.151/0_42.png": "011d11256ac48df7bb2d04fa51e418e0",
"assets/assets/buzzy/buzzy.151/0_43.png": "2b38ad99504bac295a08e3552c2f0447",
"assets/assets/buzzy/buzzy.151/0_57.png": "ab101fab2e52604b8f153347c0a5cd73",
"assets/assets/buzzy/buzzy.151/0_59.png": "684943448a22d31176889f0a7489bd43",
"assets/assets/buzzy/buzzy.151/0_58.png": "e774913f459207d87463e731753dda34",
"assets/assets/buzzy/buzzy.151/0_48.png": "af3795141234adbaf325c1aa49ececee",
"assets/assets/buzzy/buzzy.151/0_49.png": "27b01a43eaffe0d1859a72463cba6418",
"assets/assets/buzzy/buzzy.151/files/GoFixedSizeIcon.png": "e9929d1937b5ab54b602cf6052e4b578",
"assets/assets/buzzy/buzzy.151/files/KeyShotXR.js": "0fcb4d3989fe01b284182ac976565362",
"assets/assets/buzzy/buzzy.151/files/GoFullScreenIcon.png": "ab9b3af1e03839ef69bc5737c4341859",
"assets/assets/buzzy/buzzy.151/files/ks_logo.png": "b483dfc29a7b2acb9e051613d2c977c8",
"assets/assets/buzzy/buzzy.151/files/xr_cursor.gif": "6ff3c8a65b8f756f087695a4aa35fa58",
"assets/assets/buzzy/buzzy.151/files/xr_hand.gif": "c378b89afb9041b3578755dc9968f8a0",
"assets/assets/buzzy/buzzy.151/0_0.png": "a916d2fea5e0abc2998b35d35b0e7e6f",
"assets/assets/buzzy/buzzy.151/0_39.png": "e79e9f1ae6d40f7a7a762290fb401440",
"assets/assets/buzzy/buzzy.151/0_11.png": "b0dc2e47a2e26a83d1ad4bfb72a51eda",
"assets/assets/buzzy/buzzy.151/0_10.png": "2eb71360e0678a39cf6ea580a0ce79f4",
"assets/assets/buzzy/buzzy.151/0_38.png": "2a9d56259be7e69855a64ef162e24422",
"assets/assets/buzzy/buzzy.151/0_1.png": "c8583dd80186f054e47ad83df8a50868",
"assets/assets/buzzy/buzzy.151/0_3.png": "4255660df2a021849039a6514e7fd0d5",
"assets/assets/buzzy/buzzy.151/0_12.png": "2dab067fc3cf9642caa7693fc20b5807",
"assets/assets/buzzy/buzzy.151/0_13.png": "be0fc549dcabec033194d529718e19b2",
"assets/assets/buzzy/buzzy.151/0_2.png": "64dfadc0730d4e2de44c19af0425d014",
"assets/assets/buzzy/buzzy.151/0_6.png": "9256fc3f9796fdbaf1493a29dd5ad6b2",
"assets/assets/buzzy/buzzy.151/0_17.png": "7602269ff08980826a79c43ebfc7dc31",
"assets/assets/buzzy/buzzy.151/0_16.png": "ca42cd30be87aea1d351bee54d8869d3",
"assets/assets/buzzy/buzzy.151/0_7.png": "cc44cfd10ba890db2472b5c2abea8564",
"assets/assets/buzzy/buzzy.151/0_5.png": "5b6d807d4595c2943ae45bcf59a38a51",
"assets/assets/buzzy/buzzy.151/0_14.png": "1c8016269ba0ddbd6b8e560a27e8ba08",
"assets/assets/buzzy/buzzy.151/0_28.png": "4dd113c0fddb2fc7213d0704e6047188",
"assets/assets/buzzy/buzzy.151/0_29.png": "422e1f990774ccd54c15159ed7d0ce6d",
"assets/assets/buzzy/buzzy.151/0_15.png": "aad1bc65f296573db2786ed0488f235a",
"assets/assets/buzzy/buzzy.151/0_4.png": "1fda8b83dc8024260bb6ee96a18d1969",
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
"assets/assets/buzzy/buzzy.151.html": "996f7cd26f2714e4dc880475c4e61c7b",
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
"assets/assets/obi/60.png": "02d65588f503f60602f9b4daf03e9db4",
"assets/assets/obi/48.png": "6c4025ca84ca8a503238faa649cbb9c0",
"assets/assets/obi/49.png": "f5e73bcd639ef0d593d7ecf129e21cdf",
"assets/assets/obi/59.png": "dff7b94f3f7e8f62452fde1d0b9c5385",
"assets/assets/obi/58.png": "ee95f643c0ce86d8e876326e3afdbfcc",
"assets/assets/obi/8.png": "ccee1dd494e261128b0e26ce80a8dd4f",
"assets/assets/obi/obi.150/0_9.png": "1bea5b815465b29acade856a351f6d2c",
"assets/assets/obi/obi.150/0_18.png": "45b81ee7c275014da41d2f14f34be91f",
"assets/assets/obi/obi.150/0_30.png": "d9e38a085ac7259128a7cc6524c3c28d",
"assets/assets/obi/obi.150/0_24.png": "4ccd89e40e8fca809793b28073fe443d",
"assets/assets/obi/obi.150/0_25.png": "556a8ef72fba0dd37deeed5527da22e2",
"assets/assets/obi/obi.150/0_31.png": "6c3a4afdb94547ebf0dbfceb0ec48b9f",
"assets/assets/obi/obi.150/0_19.png": "3e6b6ffed2b810152750b0b640422018",
"assets/assets/obi/obi.150/0_8.png": "00b9459bc01eb46ca46c062b75df5e95",
"assets/assets/obi/obi.150/0_27.png": "34b977d14902eaf20a658588e11db9bb",
"assets/assets/obi/obi.150/0_33.png": "75c1818ccaed07eec52932a023e13d4d",
"assets/assets/obi/obi.150/0_32.png": "0afcddc814c0db713e7e8d05a382205b",
"assets/assets/obi/obi.150/0_26.png": "0963427088b66358abaf0a60906171ec",
"assets/assets/obi/obi.150/0_22.png": "4bc388718d5b377fe16480b52adbe127",
"assets/assets/obi/obi.150/0_36.png": "4205f70aa252fcc4aa0b266929938a85",
"assets/assets/obi/obi.150/0_37.png": "6a89217c52711da7702c9b57b70e3a4d",
"assets/assets/obi/obi.150/0_23.png": "d5f57ab552140e5322ba36094edda18b",
"assets/assets/obi/obi.150/0_35.png": "fc1c5554ef2f0eb9596835473740b03e",
"assets/assets/obi/obi.150/0_21.png": "72415fee50e1325d8f8b1b715091d215",
"assets/assets/obi/obi.150/0_20.png": "f6fc7c0f7326813fe15c84a261c7cc13",
"assets/assets/obi/obi.150/0_34.png": "a8a26e8b80cf453d1502ab1e565897e9",
"assets/assets/obi/obi.150/0_53.png": "46190d2a916318bc8e8e1f383cf0406d",
"assets/assets/obi/obi.150/0_47.png": "0913b7ddbf0e4bea24dd7c2545c6c208",
"assets/assets/obi/obi.150/0_46.png": "919e22ea7b40ad629d48487bb0b5ce7b",
"assets/assets/obi/obi.150/0_52.png": "39c50ef7911cad5c2a0186a6847783ea",
"assets/assets/obi/obi.150/0_44.png": "867a580255bb22344e46b69a0d8e6cf7",
"assets/assets/obi/obi.150/0_50.png": "4b3f770e5d7727c55762d6e217550be1",
"assets/assets/obi/obi.150/0_51.png": "a744deb4fbbe5e6d21cc7b403517ff89",
"assets/assets/obi/obi.150/0_45.png": "3578df6d6298be9024bd57387be60465",
"assets/assets/obi/obi.150/0_41.png": "4acf74f05b6be5137fa791888764ada0",
"assets/assets/obi/obi.150/0_55.png": "247d4e2feef90c87ec89135a7b8988ad",
"assets/assets/obi/obi.150/0_54.png": "c935ee832a76f46fa86b69a90a0b83ce",
"assets/assets/obi/obi.150/0_40.png": "f6092ee3c991c64c986f203c0e8a52d4",
"assets/assets/obi/obi.150/0_56.png": "8a35c8715733ae386bf94c306a3a8e9a",
"assets/assets/obi/obi.150/0_42.png": "eb65bb509154b61b40743538dd0ba746",
"assets/assets/obi/obi.150/0_43.png": "986dc7908d8c7c38bd3166f878c69225",
"assets/assets/obi/obi.150/0_57.png": "846b295cbe5d84bcd01f01433fa54b57",
"assets/assets/obi/obi.150/0_59.png": "f7dcb1279ad96279bf673b8c3cb246a6",
"assets/assets/obi/obi.150/0_58.png": "8e1eca6c178bd24f71556c68b1fba94a",
"assets/assets/obi/obi.150/0_48.png": "faca8797b876c6eaa2f4a926b9e9be57",
"assets/assets/obi/obi.150/0_49.png": "c3a6c27c320757e33900eab7fc6ece98",
"assets/assets/obi/obi.150/files/GoFixedSizeIcon.png": "e9929d1937b5ab54b602cf6052e4b578",
"assets/assets/obi/obi.150/files/KeyShotXR.js": "0fcb4d3989fe01b284182ac976565362",
"assets/assets/obi/obi.150/files/GoFullScreenIcon.png": "ab9b3af1e03839ef69bc5737c4341859",
"assets/assets/obi/obi.150/files/ks_logo.png": "b483dfc29a7b2acb9e051613d2c977c8",
"assets/assets/obi/obi.150/files/xr_cursor.gif": "6ff3c8a65b8f756f087695a4aa35fa58",
"assets/assets/obi/obi.150/files/xr_hand.gif": "c378b89afb9041b3578755dc9968f8a0",
"assets/assets/obi/obi.150/0_0.png": "7f40dbbe7bafcabb0cede8fd2f809ed4",
"assets/assets/obi/obi.150/0_39.png": "6dec32055351286cd9fc1ee0f6e057e0",
"assets/assets/obi/obi.150/0_11.png": "cb8e43268801f5e1eb3f15e11ab65981",
"assets/assets/obi/obi.150/0_10.png": "fd4f96b1886d086ffde98841863a8f61",
"assets/assets/obi/obi.150/0_38.png": "4d34e994373c3f1b34aea0abd52d1b01",
"assets/assets/obi/obi.150/0_1.png": "d3aeeb3ea62fa6342e9b52888e55d182",
"assets/assets/obi/obi.150/0_3.png": "2a99a8e30c7cf01c1832c30f7b7f06e5",
"assets/assets/obi/obi.150/0_12.png": "37fc5788b9ee94d0b8624b6d96f1bb4a",
"assets/assets/obi/obi.150/0_13.png": "0ab6d9e0ee679af3e86a5703edd4f51a",
"assets/assets/obi/obi.150/0_2.png": "37363d2a83b5287829d62befdea41091",
"assets/assets/obi/obi.150/0_6.png": "db5a5f19b07fdd4b7adfea4f318cddf6",
"assets/assets/obi/obi.150/0_17.png": "8384724a1c279ca869b882787831e5a3",
"assets/assets/obi/obi.150/0_16.png": "b3c68307f35814602acee0269300bfec",
"assets/assets/obi/obi.150/0_7.png": "1da54a6dd0fea6b1d97541c0b3bda22c",
"assets/assets/obi/obi.150/0_5.png": "b70e4975249380bd07dea21d96a50f1b",
"assets/assets/obi/obi.150/0_14.png": "85d48183f4691becc2e716c5757e0948",
"assets/assets/obi/obi.150/0_28.png": "7f54f821ef862b19534e49989e5efa62",
"assets/assets/obi/obi.150/0_29.png": "155208cbe1cb0087e660cf6e7e484c0f",
"assets/assets/obi/obi.150/0_15.png": "77a25b139067d835af44d795619fd9fe",
"assets/assets/obi/obi.150/0_4.png": "af59d1dfe4a21bfe0cf6a6d0e132488d",
"assets/assets/obi/9.png": "d417327791f150a94c4d1d6c83cf51d9",
"assets/assets/obi/obi.150.html": "d277bb0a0146683910fb2a8291b971f8",
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
"assets/assets/obi/instructions.html": "00765c4cce89a2e6448ec1a055ae8bcd",
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
"assets/assets/shali/60.png": "5c9cc23c6edac2a8ec5c537fb252b144",
"assets/assets/shali/48.png": "6cb3d088643cae031ddf8e9285c465ed",
"assets/assets/shali/49.png": "ef37181b15d5bc96513bcf4d6ac88ddf",
"assets/assets/shali/59.png": "aa5911de34e0e0f769d9e3cedd65fa96",
"assets/assets/shali/shali.145/0_9.png": "6cff93cdcd4b93521096929e0dc6c189",
"assets/assets/shali/shali.145/0_18.png": "7c7da62b4ff6a0385b53ffa99db0d31d",
"assets/assets/shali/shali.145/0_30.png": "fe85a05778e7951999aa804643eb61df",
"assets/assets/shali/shali.145/0_24.png": "c9a4e052d2f45345ef877070540ee4e0",
"assets/assets/shali/shali.145/0_25.png": "06bba38c26fd34beb55285d5c5c53a3d",
"assets/assets/shali/shali.145/0_31.png": "c74e700e824424ced116086e5751e9a5",
"assets/assets/shali/shali.145/0_19.png": "34e02562c655e11b089a54e3408539ad",
"assets/assets/shali/shali.145/0_8.png": "bd6c5f0bc4710b9644bfa360d4734528",
"assets/assets/shali/shali.145/0_27.png": "6564e2165250f82c6ff17d1ac35fc819",
"assets/assets/shali/shali.145/0_33.png": "a73c4dbeb7047dcc8211d4c3f3f1c84a",
"assets/assets/shali/shali.145/0_32.png": "3df60d60d9a49e9cc5b932c9563aca52",
"assets/assets/shali/shali.145/0_26.png": "29ffba64045bdb15baa586fc5c2c866e",
"assets/assets/shali/shali.145/0_22.png": "b8ed33a96a5a69fcef92bf3d9ad17e8c",
"assets/assets/shali/shali.145/0_36.png": "2abd1e9e84e4a5c9e68618e625fb211e",
"assets/assets/shali/shali.145/0_37.png": "2f551afe6ffc9262e18678bc44bd4471",
"assets/assets/shali/shali.145/0_23.png": "82735399eed3ca93b8a832df18f2de90",
"assets/assets/shali/shali.145/0_35.png": "5f699ad4c51c9f428d2bab84b15126cd",
"assets/assets/shali/shali.145/0_21.png": "011f5859386fbb07770388139066a530",
"assets/assets/shali/shali.145/0_20.png": "300dbdd8d306ef821f4071dac7a5f1ed",
"assets/assets/shali/shali.145/0_34.png": "c488b20cb09b3737520842fb544a1057",
"assets/assets/shali/shali.145/0_53.png": "0ff4b2a314b01533e833d84d4436fbb8",
"assets/assets/shali/shali.145/0_47.png": "58dcfc40b24b91d9cf2f2c96bf9c37d8",
"assets/assets/shali/shali.145/0_46.png": "972433d58e357cec47cc4e97966b7d47",
"assets/assets/shali/shali.145/0_52.png": "f60a91d7246e061937bbed89110884a3",
"assets/assets/shali/shali.145/0_44.png": "00d3fa9944e199a405ef52eba4a5325f",
"assets/assets/shali/shali.145/0_50.png": "3586ca7e59498f622d50632a69426c45",
"assets/assets/shali/shali.145/0_51.png": "2c4fc28b8977289500044049b246d046",
"assets/assets/shali/shali.145/0_45.png": "46cce0073d3913a1d7bc25aa6402597b",
"assets/assets/shali/shali.145/0_41.png": "2f6767328ee669505e29545887185061",
"assets/assets/shali/shali.145/0_55.png": "7cf6bd27d3c5303b9e89f345c2ce1c78",
"assets/assets/shali/shali.145/0_54.png": "cbe95f5d60285aca0ff40224abfa29d5",
"assets/assets/shali/shali.145/0_40.png": "73cab4e81320c210436e8ae24ebbadc3",
"assets/assets/shali/shali.145/0_56.png": "d04f261acba67efcb1b7e0c19d313936",
"assets/assets/shali/shali.145/0_42.png": "cd819d7cfbc60ba9baeef6aee389e340",
"assets/assets/shali/shali.145/0_43.png": "eb204396b81c8035a38931b3a6ff2a46",
"assets/assets/shali/shali.145/0_57.png": "35531b956980638e7e7a998ca4aa7890",
"assets/assets/shali/shali.145/0_59.png": "c8987c75368a2085bdc7c9acebeb0aea",
"assets/assets/shali/shali.145/0_58.png": "502a216bbd34ce70c416df77cd662f1f",
"assets/assets/shali/shali.145/0_48.png": "2898e6d0945328689d01503575a646f2",
"assets/assets/shali/shali.145/0_49.png": "68e22ea44767bb18c66b48366e934693",
"assets/assets/shali/shali.145/files/GoFixedSizeIcon.png": "e9929d1937b5ab54b602cf6052e4b578",
"assets/assets/shali/shali.145/files/KeyShotXR.js": "0fcb4d3989fe01b284182ac976565362",
"assets/assets/shali/shali.145/files/GoFullScreenIcon.png": "ab9b3af1e03839ef69bc5737c4341859",
"assets/assets/shali/shali.145/files/ks_logo.png": "b483dfc29a7b2acb9e051613d2c977c8",
"assets/assets/shali/shali.145/files/xr_cursor.gif": "6ff3c8a65b8f756f087695a4aa35fa58",
"assets/assets/shali/shali.145/files/xr_hand.gif": "c378b89afb9041b3578755dc9968f8a0",
"assets/assets/shali/shali.145/0_0.png": "c7f8a7bd3dda5f2f129819a9ad82af1b",
"assets/assets/shali/shali.145/0_39.png": "0d25a3174e7b033d886b68f9c74475e0",
"assets/assets/shali/shali.145/0_11.png": "acca24fa3a713e17254e4decfb3e527a",
"assets/assets/shali/shali.145/0_10.png": "87cef07e482cce002fb702585e95c607",
"assets/assets/shali/shali.145/0_38.png": "cf253add3c78863f5073163256c1642c",
"assets/assets/shali/shali.145/0_1.png": "a2fdfa83ee1ce670ab127bdbe3cac592",
"assets/assets/shali/shali.145/0_3.png": "77aee1f0faacea89e13f01f338703362",
"assets/assets/shali/shali.145/0_12.png": "3570e849712030cf7e875d969a8f9056",
"assets/assets/shali/shali.145/0_13.png": "582c04dbf1d730fda1afa1f2f8dbf1f2",
"assets/assets/shali/shali.145/0_2.png": "9a6346db3bfd260fe78cd30349e0c5a6",
"assets/assets/shali/shali.145/0_6.png": "45cb303852514d502f6004604203b276",
"assets/assets/shali/shali.145/0_17.png": "93cfe185e76b735a2bb83010f799a8ca",
"assets/assets/shali/shali.145/0_16.png": "cf8a1100ffcde4b8bf9151744ec2e9ef",
"assets/assets/shali/shali.145/0_7.png": "61f05e5428bff675e5867840e38c5fda",
"assets/assets/shali/shali.145/0_5.png": "d590aa847288863b088655ebc731e30e",
"assets/assets/shali/shali.145/0_14.png": "10033013da4f30d02ab5ec32b803ef05",
"assets/assets/shali/shali.145/0_28.png": "092a5ad1e5a7400bcfba9c0f5834e9fb",
"assets/assets/shali/shali.145/0_29.png": "bfbe9fcea7d832a681d2bd22c5621fa3",
"assets/assets/shali/shali.145/0_15.png": "3173b5a6d9edbcd8a3fee2b8dc68b2ce",
"assets/assets/shali/shali.145/0_4.png": "090ad97ea3b8e381d5ea30dc84bb40f9",
"assets/assets/shali/58.png": "6cb06ea6807410a4b5de5d967e4196f5",
"assets/assets/shali/8.png": "6a762097f5874c2dac725f2c37bf95be",
"assets/assets/shali/9.png": "978bc0d6edf1d4b3240f6b4f4075b3e9",
"assets/assets/shali/14.png": "6168b27d4a0c4064e96ffa17f39e1fde",
"assets/assets/shali/28.png": "06a6f548c626f17b6a85d0630cfc2af0",
"assets/assets/shali/29.png": "e23ba68388fff4776a4ae92f0c4cbbcd",
"assets/assets/shali/15.png": "c086497586af121537fa731f94478338",
"assets/assets/shali/shali.145.html": "9fb2be9dad59fab6e75fdbda3bd08c8d",
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
"assets/assets/shali/instructions.html": "0e80f93ceaa30f463fe14e13c299d557",
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
"assets/assets/buzzy_img2.png": "f950d763268496b90fffb6acdd723307",
"assets/assets/successful.png": "c6f5cdb9d664dba9d345ede7929438e2",
"assets/assets/icon_up.png": "0a86c2cfb6eeeca20cf7900327a5c2b1",
"assets/assets/obi_step5.png": "b97fd4baaad6f7f62323f1e164cd77d0",
"assets/assets/play5.png": "0447f67fb7b70037460181ee358cbbac",
"assets/assets/buzzy_img1.png": "ac1e5f10e00e8a2e0f7fd03dc4ce1385",
"assets/assets/buzzy_item.png": "28a602a5ddd66f6ca302d2fae1857c45",
"assets/assets/play4.png": "e53b77a3d751d9e0f81311e2ae4d1b0e",
"assets/assets/buzzy_human.png": "8e3bc8d1b96f6676980041bd94c3a72e",
"assets/assets/feedback.png": "92f37b9897a9c89188f14b4c78a36508",
"assets/assets/play1.png": "e266543dcaf233d4d8e27efd11ed3a41",
"assets/assets/play3.png": "9c1a3fdb4e30e310c173bd2739e372ee",
"assets/assets/play2.png": "c493161dd2f5bbfbc6db24f0d033ccbf",
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
