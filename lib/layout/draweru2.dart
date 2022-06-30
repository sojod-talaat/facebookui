import 'package:flutter/material.dart';
import 'package:gsg/layout/deawwer.dart';

class drewer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isLandscape = MediaQuery.of(context).orientation ==
        Orientation.landscape; // check if the orientation is landscape
    return Scaffold(
      appBar: AppBar(),
      body: isLandscape
          ? SingleChildScrollView(
              child: Column(
                children: const [
                  UserAccountsDrawerHeader(
                    accountName: Text('sojod talaat'),
                    accountEmail: Text('sojodtalaat990@hotmail.com'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('images/image.jpg'),
                    ),
                  ),
                  InkWell(
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                      subtitle: Text('Go to home'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.favorite),
                    title: Text('Favorite'),
                    subtitle: Text('Go to Favorite'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.perm_identity),
                    title: Text('Profile'),
                    subtitle: Text('Go to Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            )
          : Drawerui(),
    );
  }
}
