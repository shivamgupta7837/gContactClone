// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class AddPhotoLandscape extends StatelessWidget {
//   const AddPhotoLandscape({Key? key}) : super(key: key);

//   Future pickImage()async{
//  await ImagePicker().pickImage(source: ImageSource.camera);
//  }
//   @override
//   Widget build(BuildContext context) {
//     return  CircleAvatar(
//             backgroundColor: Color.fromARGB(255, 173, 208, 236),
//             radius: 45,
//             child: Center(
//                     child: IconButton(
//               onPressed: () {pickImage();},
//               icon: const Icon(
//                     Icons.camera_alt_sharp,
//                     color: Colors.black,
//                     size: 30,
//               ),
//             )),
//           );
//   }
// }