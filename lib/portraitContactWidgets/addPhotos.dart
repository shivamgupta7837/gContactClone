import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../globalVars/globals.dart' as globals;

class AddPhoto extends StatefulWidget {
  @override
  State<AddPhoto> createState() => _AddPhotoState();
}

class _AddPhotoState extends State<AddPhoto> {
  File? image;
  

  Future pickImageCamera() async {
    await ImagePicker().pickImage(source: ImageSource.camera);
  }

  Future pickImageGallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    }
    final imageTemp = File(image.path);
    globals.profileImage = imageTemp as String;
    setState(() => this.image = imageTemp);

  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 35,
      backgroundColor: Color.fromARGB(255, 173, 208, 236),
      child: Center(
          child: IconButton(
        onPressed: () {
          fromCameraOrGallery(context);
        },
        icon: const Icon(
          Icons.camera_alt_sharp,
          color: Colors.black,
          size: 25,
        ),
      )),
    );
  }

  void fromCameraOrGallery(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) => SimpleDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              contentPadding: EdgeInsets.all(15),
              title: const Text(
                "Add Photo",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w400),
              ),
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              pickImageCamera();
                            },
                            child: const Text(
                              "Take photo",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {
                              pickImageGallery();
                            },
                            child: const Text(
                              "Choose photo",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel")),
                      ],
                    ),
                  ],
                )
              ],
            ));
  }
}
