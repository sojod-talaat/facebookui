import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gsg/layout/deawwer.dart';
import 'package:gsg/layout/facebook2.dart';
import 'package:gsg/layout/story.dart';
import 'package:gsg/model/user.dart';

import '../data/data.dart';
import 'FaceUi.dart';

class facebookui extends StatefulWidget {
  static List<Widget> _widgetOptions = <Widget>[
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                const Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: SizedBox(
                  height: 40,
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "Serach",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  )),
                )),
                SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'images/masneger.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text('Stories ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  )),
              Spacer(),
              Row(
                children: const [
                  Text(
                    'See Archive',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
          const SizedBox(
            width: 9,
          ),
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: posts.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return story(posts[index].user);
                }),
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: Container(
              height: 450,
              child: ListView.builder(
                  itemCount: posts.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Ui(posts[index].user!, posts[index].post!);
                  }),
            ),
          ),
        ],
      ),
    ),
    feace(),
    Drawerui(),
  ];
  int _selectedIndex = 0;

  @override
  State<facebookui> createState() => _facebookuiState();
}

class _facebookuiState extends State<facebookui> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    String imageUrl = 'https://images.app.goo.gl/4x3t4hsEEgTL1cRGA';

    return Scaffold(
      body: Center(
        child: facebookui._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
