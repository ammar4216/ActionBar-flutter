import 'package:flutter/material.dart';
import 'package:lab_5/contact.dart';

class NavigationDrawerWidget extends StatelessWidget {
  //const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            height: 310,
            child: DrawerHeader(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: TextButton(
                        onPressed: () {},
                        child: Align(
                          alignment: Alignment.topRight,
                          child: InkWell(
                            child: Text(
                              "Profile",
                              style: TextStyle(
                                  color: Color.fromRGBO(94, 94, 96, 1),
                                  fontSize: 15.0),
                            ),
                            onTap: () {},
                          ),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.lightBlue,
                      child: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage('assets/images/my_pic.jpg'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Ammar Ahmed",
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Admin",
                      style: TextStyle(
                          color: Color.fromRGBO(94, 94, 96, 1), fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(235, 236, 238, 1),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.lightBlue,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person_pin_rounded,
              color: Colors.lightBlue,
            ),
            title: Text(
              'Contacts',
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ActionBarLab(),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.not_started_sharp,
              color: Colors.lightBlue,
            ),
            title: Text(
              'Albums',
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.lightBlue,
            ),
            title: Text(
              'Social',
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings_applications,
              color: Colors.lightBlue,
            ),
            title: Text(
              'Settings',
              style: TextStyle(fontSize: 16.0),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
