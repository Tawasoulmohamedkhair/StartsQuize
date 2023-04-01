// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:examproject/homepage.dart';
import 'package:examproject/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
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
    return ZoomDrawer(
      menuScreen: Builder(builder: (context) {
        return DrawerScreen(
          setIndex: (index) {
            setState(() {
              currentIndex = index;
              ZoomDrawer.of(context)!.close();
            });
          },
        );
      }),
      mainScreen: currentScreen(),
      borderRadius: 40,
      // showShadow: true,
      angle: -10,
      slideWidth: MediaQuery.of(context).size.width * 0.5,
      menuBackgroundColor: Color.fromARGB(255, 228, 225, 235),
    );
  }

  Widget currentScreen() {
    switch (currentIndex) {
      case 0:
        return HomeScreen(
          title: "Home",
        );
      case 1:
        return Profile(
         // title: "Profile",
        );
      case 2:
        return HomeScreen(
          title: "Settings",
        );
      case 3:
        return HomeScreen(
          title: "History",
        );

      default:
        return Homepage();
    }
  }
}

class HomeScreen extends StatefulWidget {
  final String title;
  const HomeScreen({Key? key, this.title = "Home"}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final data = [
    "القران الكريم",
    "Arabic",
    "Math",
    "Science",
    "English",
    "Physic",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 37, 33, 63),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.title,
          style: TextStyle(color: Color.fromARGB(255, 11, 10, 17)),
        ),
        centerTitle: true,
        leading: DrawerWidget(),
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
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 100,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 20,
                  ),
                  children: [
                    Card(
                      color: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          'القران الكريم',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(255, 247, 243, 243),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text('العلوم'),
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(255, 219, 215, 217),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      child: Center(
                        child: Text('التاريخ'),
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(255, 187, 184, 184),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      child: Center(
                        child: Text('اللغة العربية'),
                      ),
                    ),
                    Card(
                      color: Color.fromARGB(255, 175, 172, 172),
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
                        child: Text('اللغة الانجليزية'),
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
                      child: Center(
                        child: Text('الكيمياء'),
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
                        child: Text('الرياضيات  المتخصصة'),
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
                        'الفيزياء',
                        textAlign: TextAlign.center,
                      )),
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
                        'الاحياء',
                        textAlign: TextAlign.center,
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 211, 203, 203),
            thickness: 2,
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
          Divider(
            color: Colors.white,
            thickness: 1,
            height: 30,
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
          Divider(
            color: Color.fromARGB(255, 211, 203, 203),
            thickness: 2,
          ),
        ]),
      ),
    );
  }
}

/*Widget buildCard(int index) => Container(
      width: 100,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 50,
                height: 50,
                child: Text('data',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ),
          ),
        ],
      ),
    );*/

class DrawerScreen extends StatefulWidget {
  final ValueSetter setIndex;
  const DrawerScreen({Key? key, required this.setIndex}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            drawerList(Icons.home, "Home", 0),
            drawerList(Icons.person, "Profile", 1),
            drawerList(Icons.settings, "Settings", 2),
            drawerList(Icons.history, "History", 3),
          ],
        ),
      ),
    );
  }

  Widget drawerList(IconData icon, String text, int index) {
    return GestureDetector(
      onTap: () {
        widget.setIndex(index);
      },
      child: Container(
        margin: EdgeInsets.only(left: 10, bottom: 10),
        child: Row(
          children: [
            Icon(
              icon,
              color: Color.fromARGB(255, 25, 21, 39),
            ),
            SizedBox(
              width: 12,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Color.fromARGB(255, 25, 21, 39),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        ZoomDrawer.of(context)!.toggle();
      },
      icon: Icon(
        Icons.menu,
        color: Color.fromARGB(255, 25, 21, 39),
      ),
    );
  }
}
