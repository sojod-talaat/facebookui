import 'package:flutter/cupertino.dart';

class story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(9),
        width: 89,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              "images/download.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ));
  }
}
