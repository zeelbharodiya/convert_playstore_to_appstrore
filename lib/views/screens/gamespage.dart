import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
      body: Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 22.0),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22),
                      child: Row(
                        children: [
                          Text(
                            "Top-rated games",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            size: 25,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Row(
                          children: [
                            ...A
                                .map(
                                  (e) => InkWell(
                                    onTap: () {
                                      // setState(() {
                                      Navigator.pushNamed(context, 'AppDetailPage',arguments: e);
                                      // });
                                    },
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(right: 15.0),
                                              child: Container(
                                                height:100,
                                                  width: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.grey,
                                                    borderRadius: BorderRadius.circular(20),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(20),
                                                    child: Image.network(
                                                "${e['image']}",fit: BoxFit.fill  ,
                                                width: 90,
                                                height: 90,
                                              ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 70,
                                          // width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(top: 7.0),
                                                child: Text(" ${e['name']}",style: TextStyle(fontSize: 13,color: Colors.black87),),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 3.0),
                                                child: Row(
                                                  children: [
                                                    Text(" ${e['rate']}"),
                                                    Icon(Icons.star,size: 13,),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
                      child: Row(
                        children: [
                          Text(
                            "New & updated apps",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            size: 25,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Row(
                          children: [
                            ...B
                                .map(
                                  (e) => InkWell(
                                    onTap: () {
                                      // setState(() {
                                      Navigator.pushNamed(context, 'AppDetailPage',arguments: e);
                                      // });
                                    },
                                    child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 15.0),
                                          child: Container(
                                              height:100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(20),
                                                child: Image.network(
                                                  "${e['image']}",fit: BoxFit.fill  ,
                                                  width: 90,
                                                  height: 90,
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 70,
                                      // width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 7.0),
                                            child: Text(" ${e['name']}",style: TextStyle(fontSize: 13,color: Colors.black87),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 3.0),
                                            child: Row(
                                              children: [
                                                Text(" ${e['rate']}"),
                                                Icon(Icons.star,size: 13,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                                  ),
                            )
                                .toList(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22,right: 22,top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Suggest for you",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            size: 25,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 22,),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Row(
                          children: [
                            ...C
                                .map(
                                  (e) => InkWell(
                                    onTap: () {
                                      // setState(() {
                                        Navigator.pushNamed(context, 'AppDetailPage',arguments: e);
                                      // });
                                    },
                                    child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(right: 15.0),
                                          child: Container(
                                              height:100,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.circular(20),
                                                child: Image.network(
                                                  "${e['image']}",fit: BoxFit.fill  ,
                                                  width: 90,
                                                  height: 90,
                                                ),
                                              )),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 70,
                                      // width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 7.0),
                                            child: Text(" ${e['name']}",style: TextStyle(fontSize: 13,color: Colors.black87),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 3.0),
                                            child: Row(
                                              children: [
                                                Text(" ${e['rate']}"),
                                                Icon(Icons.star,size: 13,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                                  ),
                            )
                                .toList(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}
