import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/screens/home.dart';
import 'package:myapp2/screens/home_page.dart';
import 'package:myapp2/screens/settings.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
