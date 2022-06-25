import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          ElevatedButton(onPressed: (){}, child: Container(
            // margin: EdgeInsets.all(8),
            width: 50,
            child: Center(child: Text("Save",style: TextStyle(fontSize: 20),)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10)
             ),
            )),
         const Icon(
            Icons.more_vert_rounded,
            color: Colors.black,
            size: 30,
          ),
        ],
        leading: const Icon(
          Icons.close,
          color: Colors.black,
          size: 30,
        ),
        title: Text("Create contact",style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w400),),
      ),
    );
  }
}
