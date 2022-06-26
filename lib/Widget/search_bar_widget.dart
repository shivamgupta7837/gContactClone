import 'package:contacts/screens/search_contact.dart';
import 'package:contacts/utils/select_unselect.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  IconData? moreIcon;
  IconData? menuIcon;
  IconData? accountIcon;
  SearchBarWidget([
    this.menuIcon,
    this.moreIcon,
    this.accountIcon,
  ]);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget>
    with SingleTickerProviderStateMixin {
//  late AnimationController _menuIconController;

  // @override
  // void initState() {
  //   super.initState();
  //   _menuIconController = AnimationController(
  //       vsync: this, duration: const Duration(milliseconds: 2000));
  //   _menuIconController.forward();
  // }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blueGrey[50],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      elevation: 0,
      leading: IconButton(
        // icon: AnimatedIcon(
        //     icon: AnimatedIcons.menu_arrow, progress: _menuIconController),
        icon: Icon(Icons.menu, size: 28),
        color: Colors.black87,
        // iconSize: 25,
        onPressed: () {},
      ),
      primary: false,
      title: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchContact()),
          );
          print("object");
        },
        child: const Text("Search contacts",
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.w500)),
      ),
      actions: [
        IconButton(
            onPressed: () {SelectUnselect();},
            icon: const Icon(Icons.more_vert_rounded,
                color: Colors.black87, size: 30)),
        const IconButton(
            onPressed:null,
            icon: Icon(Icons.account_circle, color: Colors.black87, size: 35))
      ],
    );
  }
}
