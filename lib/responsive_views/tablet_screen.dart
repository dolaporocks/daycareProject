import 'package:flutter/material.dart';
import 'package:mydaycareproject/components/mobile_drawer.dart';

class TabletScreen extends StatefulWidget {
  const TabletScreen({super.key});

  @override
  State<TabletScreen> createState() => _TabletScreenState();
}

class _TabletScreenState extends State<TabletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[50],
          title: Text("MY DAYCARE PROJECT"),
          centerTitle: true,
        ),
        body: Row(
          children: [
            MobileDrawer(),
          ],
        ));
  }
}
