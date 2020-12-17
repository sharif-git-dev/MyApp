import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            'Setting Page',
            textAlign: TextAlign.center,
          )),
          
      body:
       ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: Text(
              'About App',
            ),
            leading: Icon(
              Icons.touch_app_outlined,
              color: Colors.redAccent,
            ),
            onTap: () {
              EdgeInsets.all(50);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.monitor,
              color: Colors.redAccent,
            ),
            title: Text('Themes'),
            onTap: () {
              EdgeInsets.all(50);
            },
          ),
          ListTile(
            title: Text('Account'),
            leading: Icon(
              Icons.account_box_outlined,
              color: Colors.redAccent,
            ),
            onTap: () {
              EdgeInsets.all(50);
            },
          ),
          ListTile(
            title: Text('Privacy'),
            leading: Icon(
              Icons.privacy_tip_outlined,
              color: Colors.redAccent,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text('Services & feedback'),
            leading: Icon(
              Icons.question_answer_outlined,
             color: Colors.redAccent,
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text('Note : this page isn\'t functional',
             textAlign: TextAlign.center,
             style: TextStyle(fontSize: 23,color: Colors.redAccent),
             ),
          ),
        ],
      ),
    );
  }
}
