// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, implementation_imports, unused_import

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:examproject/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sidebarx/sidebarx.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 2;
  final data = [
    "Quran",
    "Arabic",
    "Math",
    "Science",
    "English",
    "Physic",
  ];

  @override
  Widget build(BuildContext context) {
   final drawer = Home();
    final items = [
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.history,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
      Icon(
        Icons.settings,
        size: 30,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 33, 63),
        actions: [
          Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('School Name'),
                    Text('Student Name'),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 236, 235, 235),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: drawer,
      

      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.black),
        ),
        child: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Color.fromARGB(255, 12, 10, 32),
          height: 60,
          index: index,
          items: items,
          onTap: (index) => setState(() => this.index = index),
        ),
      ),
      body: Container(
        
        padding: EdgeInsets.all(5),
        color: Color.fromARGB(255, 37, 33, 63),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Offline Exam',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white),
                ),
                Icon(
                  Icons.quiz_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              child: GridView(
                padding: EdgeInsets.all(20),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 80,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                children: [
                  Card(
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 247, 243, 243),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 3),
                      child: Center(
                        child: Text('الرياضيات  المتخصصة'),
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 219, 215, 217),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 187, 184, 184),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5,left: 3),
                      child: Center(
                        child: Text('اللغة الانجليزية'),
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(255, 175, 172, 172),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      206,
                      211,
                      207,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.0),
                        child: Image.network(
                          'https://img-19.commentcamarche.net/cI8qqj-finfDcmx6jMK6Vr-krEw=/1500x/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg',
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      215,
                      218,
                      217,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      215,
                      218,
                      217,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      215,
                      218,
                      217,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      121,
                      119,
                      119,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      215,
                      218,
                      217,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'القران الكريم',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      215,
                      218,
                      217,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                  Card(
                    color: Color.fromARGB(
                      255,
                      215,
                      218,
                      217,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 211, 203, 203),
            thickness: 1,
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Online Exam',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Icon(
                  Icons.quiz_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
         
          Expanded(
            child: Container(
              child: ListView.builder(
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                        //shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(90),
                        color: Colors.grey,
                      ),
                      width: 50,
                      // height: 100,
                      margin: EdgeInsets.all(8),
                      child: Center(
                        child: Text(data[index]),
                      ),
                    );
                  }),
            ),
          ),
          
        ]),
      ),
    );
  }
}

/*Widget buildCard(int index) => Container(
      width: 200,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                width: 80,
                height: 80,
              ),
            ),
          ),
        ],
      ),
    );*/

        
/*Widget box(String title, Color backgroundcolor) {
  return Container(
      decoration: BoxDecoration(color: backgroundcolor, shape: BoxShape.circle),
      margin: EdgeInsets.only(left: 10),
      width: 100,
      //height: 20,
      alignment: Alignment.center,
      child: Text(title, style: TextStyle(color: Colors.black, fontSize: 20)));
}*/

     