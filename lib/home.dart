import 'package:flutter/material.dart';
import 'package:lab_5/widgets/drawer.dart';
import 'package:lab_5/widgets/searchwidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                // clicked(context, 'Message sent!');
              },
              icon: Icon(Icons.favorite),
            ),
            IconButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SearchPage(),
                ),
              ),
              icon: Icon(Icons.search),
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
                        // clicked(context, 'Email sent!');
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
        drawer: NavigationDrawerWidget(),
        body: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
