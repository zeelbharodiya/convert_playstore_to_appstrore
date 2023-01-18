import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1_playstore/views/screens/appdetailpage.dart';
import 'package:pr1_playstore/views/screens/apppage.dart';
import 'package:pr1_playstore/views/screens/bookpage.dart';
import 'package:pr1_playstore/views/screens/gamespage.dart';
import 'package:pr1_playstore/views/screens/global.dart';
import 'package:pr1_playstore/views/screens/moviepage.dart';
import 'package:pr1_playstore/views/screens/searchpage.dart';
import 'package:pr1_playstore/views/screens/todaypage.dart';

import 'navigatorpage.dart';

void main() {
  runApp(
    Myapp(),
  );
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp>
    with SingleTickerProviderStateMixin{

  int pageindex = 0;

  int currentitem = 0;

  late TabController tabController;
  PageController pageController = PageController();

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              'Mpp': (context) => Myapp(),
              'NavigatorPage': (context) => NavigatorPage(),
              'GamePage': (context) => GamePage(),
              'AppPage': (context) => AppPage(),
              'MoviePage': (context) => MoviePage(),
              'BookPage': (context) => BookPage(),
              'AppDetailPage': (context) => AppDetailPage(),
              'SearchPage': (context) => SearchPage(),
            },

      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10.0,top: 3),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 3,
              shadowColor: Colors.grey,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.menu,color: Colors.black,),
                  hintText: "Search for apps&games",
                  suffixIcon: Switch(
                    // activeTrackColor: Colors.green,
                    //   thumbColor: MaterialStateProperty.all(Colors.white),
                      value: Global.isIOS, onChanged: (val) {
                    setState(() {
                      Global.isIOS = val;
                    });
                  }),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ),
          ),
          bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.green[700],
              unselectedLabelColor: Colors.blueGrey,
              indicatorColor: Colors.green[700],
              controller: tabController,
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.label,

              onTap: (val) {
                setState(() {
                  currentitem = val;
                });
                pageController.animateToPage(val, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
              },
              tabs: [
                Tab(
                  child: Text("For you",style: TextStyle(fontSize: 16),),
                ),
                Tab(
                  child: Text("Top charts",style: TextStyle(fontSize: 16),),
                ),
                Tab(
                  child: Text("Categories",style: TextStyle(fontSize: 16),),
                ),
                Tab(
                  child: Text("Events",style: TextStyle(fontSize: 16),),
                ),
              ]),
        ),
        body:
        PageView(
          onPageChanged: (val) {
            setState(() {
              currentitem = val;
            });
            tabController.animateTo(val);
          },
          controller: pageController,
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          pageSnapping: true,
          children: [
            GamePage(),
            AppPage(),
            MoviePage(),
            BookPage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.green),
          currentIndex: currentitem,
          onTap: (val) {
            setState(() {
              currentitem = val;
            });
            tabController.animateTo(val);
            pageController.animateToPage(val, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
          },
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.game_controller_solid),label: "Games",),
            BottomNavigationBarItem(icon: Icon(Icons.apps,),label: "Apps"),
            BottomNavigationBarItem(icon: Icon(Icons.local_movies_outlined,),label: "Movies & TV"),
            BottomNavigationBarItem(icon: Icon(Icons.book_outlined,),label: "Books"),
          ],
        ),
      ),
          )
        : CupertinoApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'Myapp': (context) => Myapp(),
        'NavigatorPage': (context) => NavigatorPage(),
        'GamePage': (context) => GamePage(),
        'AppPage': (context) => AppPage(),
        'MoviePage': (context) => MoviePage(),
        'BookPage': (context) => BookPage(),
        'AppDetailPage': (context) => AppDetailPage(),
        'SearchPage': (context) => SearchPage(),
      },
      home: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Colors.white,
          middle: Text("Setting UI",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600),),
          trailing: CupertinoSwitch(
              activeColor: Colors.green,
              value: Global.isIOS,
              onChanged: (val) {
                setState(() {
                  Global.isIOS = val;
                });
              }),
        ),
        child: Container(
        color: Colors.blue,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            IndexedStack(
              index: pageindex,
              children: [
                Today(),
                GamePage(),
                AppPage(),
                BookPage(),
                SearchPage(),
              ],
            ),
            CupertinoTabBar(
              currentIndex: pageindex,
              onTap: (val) {
                setState(() {
                  pageindex = val;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.today),
                    label: "TOday",
                    backgroundColor: Colors.black),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.rocket_fill),
                    label: "Games"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.layers_alt_fill),
                    label: "Apps"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.arrow_down_square_fill),
                    label: "Updates"),
                BottomNavigationBarItem(
                    icon:
                    Icon(CupertinoIcons.search),
                    label: "Search"),
              ],
            ),
          ],
        )),
        ),
    );
  }
}
