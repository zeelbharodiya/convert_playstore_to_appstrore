import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr1_playstore/views/screens/apppage.dart';
import 'package:pr1_playstore/views/screens/bookpage.dart';
import 'package:pr1_playstore/views/screens/gamespage.dart';
import 'package:pr1_playstore/views/screens/global.dart';
import 'package:pr1_playstore/views/screens/moviepage.dart';


class NavigatorPage extends StatefulWidget {
  const NavigatorPage({Key? key}) : super(key: key);

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage>
    with SingleTickerProviderStateMixin{

  late TabController tabController;
  PageController pageController = PageController();

  int currentitem = 0;

  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
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
        );
  }
}
