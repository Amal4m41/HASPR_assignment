import 'package:flutter/material.dart';
import 'package:haspr_assignment/screens/post_ad_screen.dart';
import 'package:haspr_assignment/screens/seeker_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PostAdScreen(),
    );
  }
}
