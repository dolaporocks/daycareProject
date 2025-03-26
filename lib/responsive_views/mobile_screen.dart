import "package:flutter/material.dart";
import "package:mydaycareproject/components/mobile_drawer.dart";

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown[50],
        title: Text("MY DAYCARE PROJECT"),
        centerTitle: true,
      ),
      drawer: MobileDrawer(),
    );
  }
}
