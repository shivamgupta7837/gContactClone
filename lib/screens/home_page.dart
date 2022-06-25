import 'package:contacts/Widget/phone_numbers.dart';
import 'package:contacts/Widget/search_bar_widget.dart';
import 'package:contacts/utils/add_contact.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // late AnimationController _menuIconController;
  // @override
  // void initState() {
  //   super.initState();
  //   _menuIconController = AnimationController(
  //       vsync: this, duration: const Duration(milliseconds: 2000));
  //   _menuIconController.forward();
  // }

  int _curretIndex = 0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: SizedBox(
          height: 64.0,
          width: 72.0,
          child: FittedBox(
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 198, 222, 244),
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ), 
              onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => AddContact()));
              },
              child: const Icon(Icons.add, color: Colors.black, size: 30),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          height:90,child: _buildBottomNav()),
        body: Column(
          children: [
            Container(
              height: 105,
              child: Stack(
                children: [
                  Positioned(
                    top: 30.0,
                    left: 18.0,
                    right: 20.0,
                    child: SearchBarWidget(),
                  ),
                ],
              ),
            ),
            Row(
              children: const [
                SizedBox(width: 20),
                Icon(Icons.person_outline_rounded),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "abc@gmail.com 111 contacts",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              color: Colors.black,
              thickness: 0.5,
            ),
            // PhoneNumbers(),// incomplete....
          ],
        ));
  }

  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.blueGrey[50],
      items:const  [
      BottomNavigationBarItem(
        icon:Icon(Icons.person_rounded,size: 30),
        label: 'Contacts',
        backgroundColor: Colors.black
      ),
      BottomNavigationBarItem(
        icon:Icon(Icons.build_outlined,size: 30),
        label: 'Fix &  manage',
        backgroundColor: Colors.black
      )
    ],
    currentIndex: _curretIndex,
    onTap: (int newIndex){
      setState(() {
        _curretIndex = newIndex;
      });
    },);
  }
}
