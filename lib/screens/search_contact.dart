import 'package:flutter/material.dart';

class SearchContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        title: const TextField(
          style: TextStyle(color: Colors.black54, fontSize: 20),
          decoration: InputDecoration(
            hintText: "Search Contacts",
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back),
        color: Colors.black,
        onPressed: (){
          Navigator.pop(context);
        },),
      ),
    );
  }
}
