import 'package:flutter/material.dart';
import 'package:myapp2/screens/home.dart';
import 'package:myapp2/screens/settings.dart';

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
      backgroundColor: Colors.white,
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
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
        backgroundColor: Colors.blue,
      ),
      body: screens[index],
    );
    //
    //
  }
}
