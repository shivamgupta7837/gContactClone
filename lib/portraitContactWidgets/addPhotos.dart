import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddPhoto extends StatelessWidget {
  const AddPhoto({Key? key}) : super(key: key);

 Future pickImageCamera()async{
 await ImagePicker().pickImage(source: ImageSource.camera);
 }

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      maxRadius: 35,
            backgroundColor: Color.fromARGB(255, 173, 208, 236),
            child: Center(
                child: IconButton(
              onPressed: () {
                fromCameraOrGallery(context);},
              icon: const Icon(
                Icons.camera_alt_sharp,
                color: Colors.black,
                size: 25,
              ),
            )),
          );
  }
  void fromCameraOrGallery(BuildContext context){
    showDialog(context: context, 
    builder: (BuildContext context)=>SimpleDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      contentPadding: EdgeInsets.all(15),
      title: const Text("Add Photo",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w400),),
      children: [
        Column(
          children: [
            Row(
              children: [
      TextButton(onPressed: (){pickImageCamera();}, child: const Text("Take photo",style: TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.w400),)),
            ],),
            Row(children: [
      TextButton(onPressed: (){}, child: const Text("Choose photo",style: TextStyle(fontSize:15,color: Colors.black,fontWeight: FontWeight.w400),)),
            ],),
            const SizedBox(height: 6,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
      TextButton(onPressed: (){
        Navigator.pop(context);
      }, child: const Text("Cancel")),
            ],),

          ],
        )
      ],

    )
    );

  }
}