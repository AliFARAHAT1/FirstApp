import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myapp2/screens/home_page.dart';
import 'package:myapp2/widgets/button.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          MyButton(
            text: "Button 1",
            icon: Icons.person,
            color: Colors.blue,
            onClick: () {
              print("Button 1 clicked");
            },
          ),
          const SizedBox(
            height: 10,
          ),
          MyButton(
            text: "Button 2",
            icon: Icons.search,
            color: Colors.green,
            onClick: () {
              print("Button 2 clicked");
            },
          ),
        ],
      ),
    );
  }
}
