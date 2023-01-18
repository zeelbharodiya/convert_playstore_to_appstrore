import 'package:flutter/material.dart';

class AppDetailPage extends StatefulWidget {
  const AppDetailPage({Key? key}) : super(key: key);

  @override
  State<AppDetailPage> createState() => _AppDetailPageState();
}

class _AppDetailPageState extends State<AppDetailPage> {
  @override
  Widget build(BuildContext context) {
    Map C3 = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only( top: 22),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0,right: 22),
                child: Row(
                  children: [
                    Container(
                        height: 87,
                        width: 87,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "${C3['image']}",
                            fit: BoxFit.fill,
                            width: 90,
                            height: 90,
                          ),
                        )),
                    SizedBox(
                      width: 22,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${C3['name']}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 29,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "${C3['name']}",
                          style: TextStyle(
                              color: Colors.green[800],
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Contain ads * in app purchase",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0,right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "${C3['rate']}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              size: 13,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "90M reviews",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 25,
                      width: 1.5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${C3['dow']}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Downlods",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 25,
                      width: 1.5,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "E",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Everyone",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0,right: 22),
                child: Container(
                  width: double.infinity,
                   child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.green[700]),
                        ),
                        onPressed: () {},
                        child: Text(
                          "install",
                          style: TextStyle(color: Colors.white),
                        ))
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 22.0,right: 22),
                  child: Row(
                    children: [
                      Container(
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black,width: 5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "${C3['Alli1']}",
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                            ),
                          )),
                      SizedBox(width: 15,),
                      Container(
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black,width: 5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "${C3['Alli2']}",
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                            ),
                          )),
                      SizedBox(width: 15,),
                      Container(
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.black,width: 5),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "${C3['Alli3']}",
                              fit: BoxFit.cover,
                              width: 90,
                              height: 90,
                            ),
                          )),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0,right: 22,top: 15,bottom: 15),
                child: Row(
                  children: [
                    Text("About this game",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    Spacer(),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Discover the endless desert",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.grey,fontSize: 14),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0,left: 22,right: 22,bottom: 22),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 35,
                      alignment: Alignment.center,
                      child: Text("Action"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.green),
                      ),
                    ),
                    SizedBox(width: 17,),
                    Container(
                      width: 130,
                      height: 35,
                      alignment: Alignment.center,
                      child: Text("Editors' choice"),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.green),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0,right: 22,bottom: 15),
                child: Row(
                  children: [
                    Text("Ratings & reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                    SizedBox(width: 5,),
                    Icon(Icons.info_outline),
                    Spacer(),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 22.0,right: 22,top: 20),
                child: Row(
                  children: [
                    Container(
                      height: 90,
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Text("${C3['rate']}",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
                          Row(
                            children: [
                              Icon(Icons.star,color: Colors.green,size: 18,),
                              Icon(Icons.star,color: Colors.green,size: 18),
                              Icon(Icons.star,color: Colors.green,size: 18),
                              Icon(Icons.star,color: Colors.green,size: 18),
                              Icon(Icons.star_half,color: Colors.green,size: 18),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 22,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text("5",style: TextStyle(fontSize: 13),),
                            SizedBox(width: 15,),
                            Stack(
                              children :[
                                Container(
                                width: 180,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                                Container(
                                  width: 150,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green[700],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                             ],
                            ),
                          ],
                        ),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Text("4",style: TextStyle(fontSize: 13),),
                            SizedBox(width: 15,),
                            Stack(
                              children :[
                                Container(
                                  width: 180,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green[700],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Text("3",style: TextStyle(fontSize: 13),),
                            SizedBox(width: 15,),
                            Stack(
                              children :[
                                Container(
                                  width: 180,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  width: 30,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green[700],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Text("2",style: TextStyle(fontSize: 13),),
                            SizedBox(width: 15,),
                            Stack(
                              children :[
                                Container(
                                  width: 180,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  width: 50,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green[700],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Text("1",style: TextStyle(fontSize: 13),),
                            SizedBox(width: 15,),
                            Stack(
                              children :[
                                Container(
                                  width: 180,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                Container(
                                  width: 20,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.green[700],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
