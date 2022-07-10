import 'package:flutter/material.dart';

class AddPhoto extends StatelessWidget {
  const AddPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height/8,
      width: MediaQuery.of(context).size.width,
      child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 173, 208, 236),
              radius: 20,
              child: Center(
                  child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_sharp,
                  color: Colors.black,
                  size: 30,
                ),
              )),
            ),
    );
  }
}