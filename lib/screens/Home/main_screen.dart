import 'package:flutter/material.dart';
import 'package:green_life/drawer.dart';
import 'package:green_life/screens/Home/community.dart';
import 'package:green_life/screens/Home/home_screen.dart';
import 'package:green_life/screens/Home/product_screen.dart';
import 'package:green_life/screens/profile/profile_screen.dart';
import 'package:green_life/sheard.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int index = 0;
  List<Widget> navList=[
    HomeScreen(),
    ProductScreen(),
    CommunityScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: ListTile(
          leading: SizedBox(
            width: 1,
          ),
          title: Row(
            children: [
              CircularPercentIndicator(
                lineWidth: 1,
                backgroundColor: kPrimaryColor,
                radius: 21,
                center: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/men/47.jpg"),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      sharedText(txt: 'hi, '),
                      sharedText(txt: 'ahmed',color: kPrimaryColor),
                    ],
                  ),
                  Row(
                    children: [
                      sharedText(txt: 'cairo ',color: Colors.orangeAccent),
                      sharedText(txt: 'Egypt',),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: kPrimaryColor,
            size: 32,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_none,
            color: kPrimaryColor,
            size: 32,
          ),
        ],
      ),
      drawer: BuildDrawer(),
      body: navList.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Product',),
        BottomNavigationBarItem(icon: Icon(Icons.groups), label: 'Community',),
      ],
        currentIndex: index,
        selectedItemColor: kPrimaryColor,
        onTap: (i){
        setState(() {
          index = i;
        });
        },
      ),
    );
  }
}
