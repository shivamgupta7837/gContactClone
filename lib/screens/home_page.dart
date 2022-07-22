import 'package:contacts/screens/phone_numbers.dart';
import 'package:contacts/utils/fixAndManage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  int _curretIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SizedBox(height: 90, child: _buildBottomNav()),
      body: PageView(
     physics: NeverScrollableScrollPhysics(),
        controller: pageController, children:  [
         PhoneNumbers(),
        FixManage(),
      ]),
    );
  }

  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey[50],
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded, size: 30),
            label: 'Contacts',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.build_outlined, size: 30),
            label: 'Fix &  manage',
            backgroundColor: Colors.black)
      ],
      currentIndex: _curretIndex,
      onTap: (int newIndex) {
        setState(() {
          _curretIndex = newIndex;
        });
        pageController.animateToPage(newIndex,
            duration: Duration(milliseconds: 500), curve: Curves.decelerate);
      },
    );
  }
}
