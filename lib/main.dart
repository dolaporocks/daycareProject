import 'package:flutter/material.dart';
import 'package:mydaycareproject/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: 'My DayCare',
        debugShowCheckedModeBanner: false,
        //this is going to take us to the Home Page file which chooses the different responsive layouts based on the contexts.
        home: HomePage(),
      );
}
