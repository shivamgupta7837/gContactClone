import 'package:flutter/material.dart';

class SelectUnselect extends StatelessWidget {
  const SelectUnselect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 200,
        width: 200,
        color: Colors.black,
        child: Column(
          children: [
            Text("data")
          ],
        )
      ),],
    );
  }
}