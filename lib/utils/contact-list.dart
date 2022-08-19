import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class FullDetail extends StatelessWidget {
  Contact? name;
  var phoneNumber;
  Color bgcolor;
   FullDetail({required this.name,required this.phoneNumber,required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [
          Icon(color: Colors.black, size: 23, Icons.edit),
          SizedBox(
            width: 20,
          ),
          Icon(color: Colors.black, size: 23, Icons.star_border_rounded),
          SizedBox(
            width: 20,
          ),
          Icon(color: Colors.black, size: 23, Icons.more_vert_rounded),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left:150),
            width: MediaQuery.of(context).size.width * 50,
            height: 230,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 55,
                    backgroundColor: bgcolor,
                    child: Text(name!.initials(),style: TextStyle(fontSize: 30),),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.3,
            height: 0,
          ),
          Container(
            padding: EdgeInsets.all(9),
            height: 85,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.phone,
                            color: Colors.blue[800], size: 25)),
                    Text(
                      "Call",
                      style: TextStyle(color: Colors.blue[800], fontSize: 13,fontWeight:FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.message,
                            color: Colors.blue[800], size: 25)),
                    Text(
                      "Text",
                      style: TextStyle(color: Colors.blue[800], fontSize: 13,fontWeight:FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: null,
                        icon: Icon(Icons.video_call,
                            color: Colors.blue[800], size: 25)),
                    Text(
                      "Video",
                      style: TextStyle(color: Colors.blue[800], fontSize: 13,fontWeight:FontWeight.w500),
                    )
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.3,
            height: 0,
          ),
        ],
      ),
    );
  }
}
