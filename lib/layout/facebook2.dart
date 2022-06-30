import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class feace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.arrow_back_ios),
                SizedBox(
                  width: 9,
                ),
                Text('feed'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/download.jpg'),
                    radius: 17,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    'Sojod talaat ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text('Added 13 Photo to the  '),
                  Spacer(),
                  Image.asset(
                    'images/dot.jpg',
                    width: 23,
                    height: 23,
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 55),
                child: Row(
                  children: const [
                    Text('album'),
                    Text(
                      'Creativ camera',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            SizedBox(
              height: 12,
            ),
            Column(
              children: const [
                Text('life in hard but still nice, be lovely,kind and polite'),
                Text('life in hard but still nice, be lovely,kind and polite'),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                        margin:
                            EdgeInsets.only(bottom: 16, left: 12, right: 12),
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          image: const DecorationImage(
                            image: AssetImage(
                              "images/image.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ));
                  }),
            ),
            const SizedBox(
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
                const SizedBox(
                  width: 13,
                ),
                const Text('400 '),
                const Spacer(),
                const Text('122 comment')
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    Image.asset(
                      'images/like2.png',
                      width: 23,
                      height: 23,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        child: TextField(
                            decoration: InputDecoration(
                          suffixIcon: Icon(Icons.face_outlined),
                          hintText: "Add comment ",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        )),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
