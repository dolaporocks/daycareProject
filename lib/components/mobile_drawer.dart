import "package:flutter/material.dart";

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({super.key});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.brown[50],
            title: const Text(
              'DayCare Provider or Parent',
              style:
                  TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
            ),
            content: const Text('Are you a DayCare Provider',
                style: TextStyle(
                    color: Colors.brown, fontWeight: FontWeight.bold)),
            actions: [
              MaterialButton(
                onPressed: () {
                  //Navigator.push(
                  //   // context,
                  //   // MaterialPageRoute(builder: (context) => DaycareRegister()),
                  // );
                },
                child: Text('Yes',
                    style: TextStyle(
                      color: Colors.brown,
                    )),
              ),
              MaterialButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MobileRegister()),
                  // );
                },
                child: Text('No',
                    style: TextStyle(
                      color: Colors.brown,
                    )),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.brown[50],
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/daycare_logo.png'),
            ),
            ListTile(
              leading: Icon(Icons.home),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
              title: Text('HOME'),
            ),
            ListTile(
              leading: Icon(Icons.question_answer),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ),
                // );
              },
              title: Text('ABOUT'),
            ),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ),
                // );
              },
              title: Text('CONTACT'),
            ),
            ListTile(
              leading: Icon(Icons.login),
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ),
                // );
              },
              title: const Text('LOGIN HERE'),
            ),
            ListTile(
              leading: Icon(Icons.app_registration_rounded),
              onTap: () {
                _showDialog();
              },
              title: Text('REGISTER HERE'),
            ),
          ],
        ),
      ),
    );
  }
}
