


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Global{

 //  static int currentitem = 0;
 // static late TabController tabController;
 //  static PageController pageController = PageController();
 static bool isIOS = false;
}

List<Map<String, dynamic>> todayimage = [
  {"image3": "https://play-lh.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag"},
  {"image3": "https://pageflows.com/media/logos/candycrush.jpg"},
  {"image3": "https://www.angrybirds.com/wp-content/uploads/2022/05/AB2_202202_800x800_KeyArt_GroupSplash_LogoUp-512x512.jpg"}
];

List<Map<String , dynamic>> A = [
  {
    'image': "https://games.lol/wp-content/uploads/2019/04/temple-run-treasure-hunter-runner.jpg",
    'name': "Temple Run",
    'rate': "4.3",
    'dow': "6M+",
  },
  {
    'image': "https://m.media-amazon.com/images/M/MV5BNGU4M2M3ZGQtZjRmYS00MjgwLTliM2EtNzAxM2MwMDlhMjI2L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNzg5OTk2OA@@._V1_.jpg",
    'name': "Subway Sufers",
    'rate': "3.2",
    'dow': "3M+",
  },
  {
    'image': "https://www.angrybirds.com/wp-content/uploads/2022/05/AB2_202202_800x800_KeyArt_GroupSplash_LogoUp-512x512.jpg",
    'name': "Angry Bird",
    'rate': "4.5",
    'dow': "1M+",
  },
  {
    'image': "https://upload.wikimedia.org/wikipedia/en/5/50/Slither.png",
    'name': "Snack Game",
    'rate': "4.3",
    'dow': "7M+",
  },
  {
    'image': "https://supercell.com/_next/static/media/games_thumbnail_clashofclans.c50b0ec8.jpg",
    'name': "Clash of Clans",
    'rate': "4.2",
    'dow': "3M+",
  },
  {
    'image': "https://static.toiimg.com/photo/msid-69530316/69530316.jpg",
    'name': "PUBG",
    'rate': "4.7",
    'dow': "5M+",
  },
];




List<Map<String , dynamic>> B = [
  {
    'image': "https://play-lh.googleusercontent.com/bPz1guJ6FHF3oIOEy3KqwpaDDKO-hLRaZoyzmM8bLFLN8fWm6L0_EuUnkwv9iqPo3Ag",
    'name': "8 Ball Pull",
    'dow': "5M+",
    'rate': "3.5",
  },
  {
    'image': "https://play-lh.googleusercontent.com/qg8QqApsd5q-xeewY9Yx-UeLwoaxy-cPT7rCTpdp3gTYSKOd58SHBT5TNgoitPirMQ",
    'name': "Carrom Disc",
    'dow': "4M+",
    'rate': "4.2",
  },
  {
    'image': "https://img.utdstc.com/icon/52c/c85/52cc8566754096f8bf0f7722637418e007d95664a1a77d3209fc423b4771d995:200",
    'name': "Winzo Fantacy",
    'rate': "4.7",
    'dow': "2M+",
  },
  {
    'image': "https://play-lh.googleusercontent.com/N0UxhBVUmx8s7y3F7Kqre2AcpXyPDKAp8nHjiPPoOONc_sfugHCYMjBpbUKCMlK_XUs",
    'name': "Hill Climb",
    'rate': "3.3",
    'dow': "3M+",
  },
  {
    'image': "https://pageflows.com/media/logos/candycrush.jpg",
    'name': "Candy Crush",
    'rate': "4.5",
    'dow': "1M+",
  },
  {
    'image': "https://companieslogo.com/img/orig/BAJAJFINSV.NS-69a58fe4.png?t=1596838048",
    'name': "Bajaj Finserv",
    'rate': "4.1",
    'dow': "3M+",
  },
];



List<Map<String , dynamic>> C = [
  {
    'image': "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png",
    'name': "Instagram",
    'rate': "4.6",
    'dow': "5M+",
    'Alli1' : "https://www.dpreview.com/files/p/articles/0900788744/Instagram_Collections.jpeg",
    'Alli2' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWooyOniMN4HkK_s64FSITf5yGcKysDiVAGLbi9yk3MNJvrz2Q7S7TO-Iol6Cb2QRfv6w&usqp=CAU",
     'Alli3' : "https://cdn.mos.cms.futurecdn.net/bKR5tv7w5H3mTZY98m8wiU-320-80.jpg",
  },
  {
    'image': "https://static.vecteezy.com/system/resources/previews/002/432/911/original/social-media-snapchat-original-latest-logo-free-vector.jpg",
    'name': "Snapchat",
    'rate': "4.2",
    'dow': "4M+",
    "Alli2" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ_xi79Bd5KWaMgsddVO-amwtTG1F8FBz54a5q_7BqsNRWpPpj5Ljgi2rvLZ_WdVierYM&usqp=CAU",
    "Alli1" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQT2J9qvsNRUFsQZtXdYtqREQFicJHXnwKR7gc_ak4aHVqBGC9PwGrgRnOAvADPJvzmfSo&usqp=CAU",
    "Alli3" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1fbGzKrUZCg7iPjDABWDQVR_sSdrzaJnlC2E8SbgIet9VweEdijmLeN1tg86eg5mwpyY&usqp=CAU",
  },
  {
    'image': "https://cdn-icons-png.flaticon.com/512/124/124034.png",
    'name': "WhatsApp",
    'rate': "3.5",
    'dow': "1CR+",
    "Alli1" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXXWk47eJUSWZBTbIKwpTxGkzkCzQE5qMFMQ&usqp=CAU",
    "Alli2" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRk4-dSdcUblA8gfSyweuIX8UeRIpR4HdqtAQ&usqp=CAU",
    "Alli3" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRznB5dvwgiWoGWDlR9Ppo6LotL1ELyhlekaALrxtnmt0IzBGGXypmGXSl7cYeDMSNFSYY&usqp=CAU",
  },
  {
    'image': "https://play-lh.googleusercontent.com/kL7UFDvkRy_t3YDtivPiSw4FOj3FM7QASrmvOLFcgZVxOdsmDwpT-kg3VFAIxaTQ1Rs",
    'name': "Divya Bhaskar",
    'rate': "4.5",
    'dow': "1M+",
    "Alli1" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLZOZt7xcnOQEixzfm_0XZOWd4OOidXh-IXkiD4_-16er4p4sATDk7RqPzWxcdbP4QyxA&usqp=CAU",
    "Alli2" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShnAcBuxNvcWcpU5szcF3zK4Y2i6qEHyvrKaT1VZySK1wxvneBDC63Icmm6GK8r3BQq6g&usqp=CAU",
    "Alli3" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6Z6GldKRG-DRBNutnOnUKN0Y9UHHHHtAG32f5y_UN8THVfu8nvc31iPtMuCaGKOIA5qM&usqp=CAU",
  },
  {
    'image': "https://play-lh.googleusercontent.com/z23VsmEKEE4L0aG7eIAQSVecHa12vin2ohWSUErSO3xZhrJyY6WhwPfFSWEqWvDtV6A",
    'name': "Zedge",
    'rate': "3.7",
    'dow': "50M+",
    "Alli1" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ75PkrhZRBfJ9jSBZpzB6r1XUXkilA8Bmvlw&usqp=CAU",
    "Alli2" : "https://play-lh.googleusercontent.com/YGAoLjXL96AzxaZnhy8194A-KhyYXMlJ0HY6B5jdlDv9fOIr9QbnqTJIHMu_yECLUCbA=w526-h296-rw",
    "Alli3" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaeLhN68m5ZyQkLQySpVAKbz8SgyDIEDpnsfx68rb_Oq8QQ8ZjTcWz6fMGKvStc7Jgv3g&usqp=CAU",
  },
  {
    'image': "https://d13ir53smqqeyp.cloudfront.net/d11-static-pages/images/Dream11_Vertical_WhiteonRedBG.jpg",
    'name': "Dream 11",
    'rate': "3.9",
    'dow': "3CR+",
    "Alli1" : "https://cdnflags.dream11.com/d11-static-pages/images/ss1_2022.webp",
    "Alli2" : "https://cdnflags.dream11.com/d11-static-pages/images/screen-3-nov22.webp",
    "Alli3" : "https://image.winudf.com/v2/image1/Y29tLm15MTFjZXJjYWwubXkxMWNpcmNsZS5teWFwcF9zY3JlZW5fMF8xNjQ5MzQ1MjMzXzA3NA/screen-0.jpg?fakeurl=1&type=.jpg",
  },
];


List<Map<String , dynamic>> apps = [
  {
    'id': 1,
    'image1' : "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Instagram_logo_2016.svg/2048px-Instagram_logo_2016.svg.png",
    'title': "Instagram",
    "subtitle": "Social Networking",
    'rate1': "4.6"
  },
  {
    'id': 2,
    'image1' : "https://static.vecteezy.com/system/resources/previews/002/432/911/original/social-media-snapchat-original-latest-logo-free-vector.jpg",
    'title': "Snapchat",
    "subtitle": "Communication",
    'rate1': "4.2"
  },
  {
    'id': 3,
    'image1' : "https://www.freepnglogos.com/uploads/flipkart-logo-png/flipkart-inventory-management-system-zap-inventory-1.png",
    'title': "Flipkart",
    "subtitle": "Shopping",
    'rate1': "4.4"
  },
  {
    'id': 4,
    'image1' : "https://uxwing.com/wp-content/themes/uxwing/download/brands-and-social-media/phonepe-logo-icon.png",
    'title': "PhonePe",
    "subtitle": "Digital wallets",
    'rate1': "4.3"
  },
  {
    'id': 5,
    'image1' : "https://download.logo.wine/logo/Paytm/Paytm-Logo.wine.png",
    'title': "Paytm",
    "subtitle": "Digital wallets",
    'rate1': "3.9"
  },
  {
    'id': 6,
    'image1' : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwpsIMIitKLBSRDvtRH6fIya1N9eWkXc7KtA&usqp=CAU",
    'title': "Facebook",
    "subtitle": "Social",
    'rate1': "4.8"
  },
  {
    'id': 7,
    'image1' : "https://www.freepnglogos.com/uploads/spotify-logo-png/image-gallery-spotify-logo-21.png",
    'title': "Spotify",
    "subtitle": "Music",
    'rate1': "3.6"
  },
];

