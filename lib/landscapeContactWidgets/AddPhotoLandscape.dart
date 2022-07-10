import 'package:flutter/material.dart';

class AddPhotoLandscape extends StatelessWidget {
  const AddPhotoLandscape({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
            backgroundColor: Color.fromARGB(255, 173, 208, 236),
            radius: 55,
            child: Center(
                    child: IconButton(
              onPressed: () {},
              icon: const Icon(
                    Icons.camera_alt_sharp,
                    color: Colors.black,
                    size: 30,
              ),
            )),
          );
  }
}