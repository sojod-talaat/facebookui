import 'package:flutter/cupertino.dart';

import '../model/post.dart';
import '../model/user.dart';

class story extends StatelessWidget {
  User? user;
  story(this.user, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(9),
        width: 89,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(user?.image ?? ""),
            fit: BoxFit.cover,
          ),
        ));
  }
}
