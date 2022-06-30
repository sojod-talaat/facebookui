import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: const [
            UserAccountsDrawerHeader(
              accountName: Text('sojod talaat'),
              accountEmail: Text('sojodtalaat990"hotmail.com'),
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
      ),
    );
  }
}
