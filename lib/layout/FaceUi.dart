import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg/model/user.dart';

import '../model/post.dart';

class Ui extends StatelessWidget {
  late User user;
  late Post post;
  Ui(this.user, this.post);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(user.image ?? ''),
            radius: 15,
          ),
          const SizedBox(
            width: 9,
          ),
          //SizedBox(width: 10),
          Text(
            user.name ?? '',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          //SizedBox(width: 5),
          Text(
            ' Update his Cover Photo ',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          Spacer(),
        ],
      ),
      SizedBox(
        height: 8,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          children: [
            Text(
              '3 mins ago',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 12,
      ),
      Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            image: const DecorationImage(
              image: AssetImage(
                "images/download.jpg",
              ),
              fit: BoxFit.cover,
            ),
          )),
      SizedBox(
        height: 12,
      ),
      Row(
        children: [
          Image.asset(
            'images/like.png',
            width: 30,
            height: 30,
          ),
          Image.asset(
            'images/love.png',
            width: 23,
            height: 23,
          ),
          SizedBox(
            width: 13,
          ),
          Text('400 '),
          Spacer(),
          Text('122 comment')
        ],
      ),
      Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset(
                'images/like2.png',
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 11,
              ),
              Text(
                'Like',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Image.asset(
                  'images/comment.png',
                  width: 35,
                  height: 35,
                ),
                const SizedBox(
                  width: 11,
                ),
                Text(
                  'Comment',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}
