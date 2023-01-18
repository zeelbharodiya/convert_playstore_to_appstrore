
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class Today extends StatefulWidget {
  const Today({super.key});

  @override
  State<Today> createState() => _TodayState();
}

class _TodayState extends State<Today> {
  List<String> Weekday = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday"
        "Friday",
    "Saturday"
  ];
  List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "Octomber",
    "November"
        "December",
  ];
  DateTime currenttime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return (Global.isIOS == false)
        ? Container()
        : CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoPageScaffold(
        backgroundColor: Colors.white,
        child: Container(
          padding: EdgeInsets.all(0),
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "${Weekday[currenttime.weekday - 1]},${months[currenttime.month - 1]},${currenttime.day}",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold,color: Colors.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0,bottom: 10),
                          child: Container(
                            height: 70,
                            width: 70,
                            child: Icon(Icons.person_outline,size: 50,),
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ...todayimage
                      .map((e) => SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0,left: 22,right: 22),
                          child: Container(
                    height: 350,
                    child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            e["image3"],
                            height: 400,
                          ),
                    ),
                  ),
                        ),
                      ))
                      .toList(),
                  // Image.network("https://pageflows.com/media/logos/candycrush.jpg"),
                ]
            ),
          ),
        ),
      ),
    );
  }
}