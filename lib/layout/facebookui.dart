import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:gsg/layout/story.dart';
import 'package:gsg/model/user.dart';

import '../data/data.dart';
import 'FaceUi.dart';

class facebookui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String imageUrl = 'https://images.app.goo.gl/4x3t4hsEEgTL1cRGA';
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
                Expanded(
                  child: TextField(
                      decoration: InputDecoration(
                    hintText: "Serach",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  )),
                ),
                Image.asset(
                  'images/masneger.png',
                  width: 20,
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
                children: [
                  const Text(
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
          SizedBox(
            width: 9,
          ),
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return story();
                }),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 450,
            child: ListView.builder(
                itemCount: posts.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Ui(posts[index].user!, posts[index].post!);
                }),
          ),
        ],
      ),
    ));
  }
}
