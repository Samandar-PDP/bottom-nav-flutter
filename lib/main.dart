import 'package:bottom_nav/bottom.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('Build');
    return MaterialApp(
      home: WillPopScope(
        onWillPop: () async {
          if(currentIndex == 0) {
            return true;
          } else {
            setState(() {
              currentIndex = 0;
            });
            return false;
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(bottomList[currentIndex].label),
          ),
          body: Builder(builder: (context) {
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/img/${images[currentIndex]}',
                fit: BoxFit.fitWidth,
              ),
            );
          }),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            currentIndex: currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            selectedFontSize: 18,
            selectedItemColor: Colors.black,
            unselectedFontSize: 15,
            unselectedItemColor: Colors.grey[200],
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: bottomList
                .map((e) => BottomNavigationBarItem(
                    label: e.label,
                    icon: Icon(e.icon),
                    backgroundColor: Colors.deepOrange))
                .toList(),
          ),
        ),
      ),
    );
  }
}
