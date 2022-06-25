import 'package:flutter/material.dart';

class PhoneNumbers extends StatelessWidget {
  const PhoneNumbers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
          Text("example1"),
        ],
      ),
    );
  }
}