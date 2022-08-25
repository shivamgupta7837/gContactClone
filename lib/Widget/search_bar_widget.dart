// import 'package:contacts/screens/search_contact.dart';
import 'package:flutter/material.dart';
import '../globalVars/globals.dart' as globals;

class SearchBarWidget extends StatefulWidget {


  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget>{


Color searchBoxBg = Color(0xFFeff3fc);
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
       preferredSize:Size.zero, 
      child: AppBar(
         iconTheme:const  IconThemeData(color: Colors.black),
         toolbarHeight: 50.0,
        backgroundColor: searchBoxBg,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 0,
        primary: false,
        title: GestureDetector(
          onTap: null,
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => SearchContact()),
          //   );
          // },
          child: const Text("Search contacts",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
        ),
       
      ),
    );
  }
}

