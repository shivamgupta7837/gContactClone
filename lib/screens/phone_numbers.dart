import 'package:contacts/Widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:contacts/Widget/search_bar_widget.dart';
import '../globalVars/globals.dart' as globals;
import 'add_contact.dart';

class PhoneNumbers extends StatelessWidget {
  const PhoneNumbers({Key? key}) ;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddContact()));
              },
              child: const Icon(Icons.add, color: Colors.black, size: 30),
            ),
          ),
        ),
      body: Column(
          children: [
         
            Container(
              height: 105,
              child: Stack(
                children: [
                  Positioned(
                    top: 32.0,
                    left: 18.0,
                    right: 20.0,
                    child: SearchBarWidget(),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const SizedBox(width: 20),
                const Icon(Icons.person_outline_rounded),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  globals.eailId,
                  style: const TextStyle(fontWeight: FontWeight.w500),
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
        ),
    );
  }
}