// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:lab_5/home.dart';
import 'package:lab_5/widgets/drawer.dart';

class ActionBarLab extends StatefulWidget {
  const ActionBarLab({Key? key}) : super(key: key);

  @override
  _ActionBarLabState createState() => _ActionBarLabState();
}

class _ActionBarLabState extends State<ActionBarLab> {
  void clicked(BuildContext context, menu) {
    final scaffold = ScaffoldMessenger.of(context);

    scaffold.showSnackBar(
      SnackBar(
        content: Text(menu),
        action: SnackBarAction(
            label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          leading: IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => Home(),
              ),
            ),
            icon: Icon(Icons.arrow_back),
          ),
          title: Text('Contacts'),
          actions: [
            IconButton(
              onPressed: () {
                clicked(context, 'Message sent!');
              },
              icon: Icon(Icons.message),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                    value: 0,
                    child: TextButton.icon(
                      label: Text('Email Send'),
                      icon: Icon(Icons.email),
                      onPressed: () {
                        clicked(context, 'Email sent!');
                      },
                    ),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: TextButton.icon(
                      label: Text('Settings'),
                      icon: Icon(Icons.settings),
                      onPressed: () {},
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: TextButton.icon(
                      label: Text('Logout'),
                      icon: Icon(Icons.logout),
                      onPressed: () {},
                    ),
                  ),
                ];
              },
            ),
          ],
        ),
        body: Center(child: Text('Contact Page')),
      ),
    );
  }
}
