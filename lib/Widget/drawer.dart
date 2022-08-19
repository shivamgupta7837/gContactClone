import 'package:flutter/material.dart';
import '../globalVars/globals.dart' as globals;

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 18, top: 30),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/logocontact.png'),
              ),
            ),
            SizedBox(width: 13),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                "Contacts",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 28,
        ),
        Row(
          children:  [
           const  Padding(
                padding: EdgeInsets.only(
                  left: 28,
                ),
                child: Icon(Icons.person)),
           const SizedBox(
              width: 10,
            ),
            TextButton(
              child:const Text(
              "All accounts",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.black),
            ),
            onPressed: (){

            },)
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          color: Colors.black,
          thickness: 1.2,
          indent: 20,
          endIndent: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28),
          child: Row(
            children: const [
              Text(
                "Labels",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.only(left: 22),
          child: Row(
            children:  [
            const  Icon(Icons.add),
             const  SizedBox(width: 5),
              TextButton(onPressed: (){}, child: const Text(
                "Create label",
                style: TextStyle(fontSize: 18,color: Colors.black),
              ),)
            ],
          ),
        ),
      ]),
    );
  }
}
