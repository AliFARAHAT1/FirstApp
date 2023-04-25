import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp2/screens/home.dart';
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

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  List<Widget> screens = [Home(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.amber,
        currentIndex: index,
        onTap: (int value) {
          // currentIndex = value;
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
      ),
      appBar: AppBar(
        title: Text(
          index == 0
              ? "HOME"
              : index == 1
                  ? "SETTINGS"
                  : "",
        ),
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: screens[index],
    );
    //
    //
  }
}
