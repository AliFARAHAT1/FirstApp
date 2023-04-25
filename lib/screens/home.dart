import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 19,
        crossAxisSpacing: 20,
        children: infos.map((e) => Box(info: e)).toList(),
      ),
    );
  }
}

class Box extends StatelessWidget {
  final BoxInfo info;
  const Box({
    super.key,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          info.icon,
          size: 30,
        ),
        Text(
          info.text1,
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(info.text2),
      ]),
    );
  }
}

class BoxInfo {
  String text1, text2;
  IconData icon;

  BoxInfo({
    required this.text1,
    required this.text2,
    required this.icon,
  });
}

List<BoxInfo> infos = [
  BoxInfo(text1: "Box 1", text2: "Text 1", icon: Icons.reddit),
  BoxInfo(text1: "Box 2", text2: "Text 2", icon: Icons.reddit),
  BoxInfo(text1: "Box 3", text2: "Text 3", icon: Icons.reddit),
  BoxInfo(text1: "Box 1", text2: "Text 1", icon: Icons.reddit),
  BoxInfo(text1: "Box 8", text2: "Text 2", icon: Icons.reddit),
  BoxInfo(text1: "Box 9", text2: "Text 3", icon: Icons.reddit),
  BoxInfo(text1: "Box 10", text2: "Text 3", icon: Icons.reddit),
  BoxInfo(text1: "Box 11", text2: "Text 3", icon: Icons.reddit),
  BoxInfo(text1: "Box 12", text2: "Text 3", icon: Icons.reddit),
  BoxInfo(text1: "Box 12", text2: "Text 3", icon: Icons.reddit),
  BoxInfo(text1: "Box 12", text2: "Text 3", icon: Icons.reddit),
];
