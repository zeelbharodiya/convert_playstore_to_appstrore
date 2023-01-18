import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';


class AppPage extends StatefulWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {



  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false) ?
      Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 22.0,bottom: 22),
              child: Row(
                children: [
                  SizedBox(width: 22,),
                  Container(
                    height: 40,
                    width: 80,
                    alignment: Alignment.center,
                    child: Text("Top free",style: TextStyle(color: Colors.black87),),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 14,),
                  Container(
                    height: 40,
                    width: 110,
                    alignment: Alignment.center,
                    child: Text("Top grossing",style: TextStyle(color: Colors.black87),),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 14,),
                  Container(
                    height: 40,
                    width: 80,
                    alignment: Alignment.center,
                    child: Text("Trending",style: TextStyle(color: Colors.black87),),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 14,),
                  Container(
                    height: 40,
                    width: 80,
                    alignment: Alignment.center,
                    child: Text("Top paid",style: TextStyle(color: Colors.black87),),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 22,),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0,right: 22),
                child: Column(
                  children: [...apps.map((e) =>
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22.0),
                        child: Row(
                          children: [
                            Text("${e['id']}"),
                            SizedBox(width: 22,),
                            Container(
                                height:70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    "${e['image1']}",fit: BoxFit.fill  ,
                                    width: 90,
                                    height: 90,
                                  ),
                                )),
                            SizedBox(width: 18,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(("${e['title']}")),
                                SizedBox(height: 3,),
                                Text(("${e['subtitle']}"),style: TextStyle(color: Colors.grey[600]),),
                                SizedBox(height: 3,),
                                Row(
                                  children: [
                                    Text(("${e['rate1']}")),
                                    Icon(Icons.star,size: 13,),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ).toList(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ): CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(child: Container(),),
    );
  }
}
