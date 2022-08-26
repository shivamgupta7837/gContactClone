import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FullDetail extends StatelessWidget {
  Contact? avtarName;
  String? fullName;
  var phoneNumber;
  Color bgcolor;
  FullDetail(
      {required this.avtarName,
      required this.phoneNumber,
      required this.bgcolor,
      required this.fullName,
});

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
            width: MediaQuery.of(context).size.width * 50,
            height: 230,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 48,
                        backgroundColor: bgcolor,
                        child: Text(avtarName!.initials(),
                            style: const TextStyle(
                                fontSize: 35, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 55.0),
                  child: Text(
                    fullName!,
                    style: const TextStyle(fontSize: 25),
                  ),
                )
              ],
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
                        onPressed:()async{
                          final Uri uriLaunch = Uri(
                            scheme: 'tel',
                            path: phoneNumber.elementAt(0).value,
                          );
                          if(await canLaunchUrl(uriLaunch)){
                            await launchUrl(uriLaunch);
                          }else{
                                    const snackBar =   SnackBar(content: Text('action not supported'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        },
                        icon: Icon(Icons.local_phone_outlined,
                            color: Colors.blue[800], size: 25)),
                    Text(
                      "Call",
                      style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    IconButton(
                       onPressed:()async{
                          final Uri uriLaunch = Uri(
                            scheme: 'sms',
                            path: phoneNumber.elementAt(0).value,
                          );
                          if(await canLaunchUrl(uriLaunch)){
                            await launchUrl(uriLaunch);
                          }else{
                            const snackBar =   SnackBar(content: Text('action not supported'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        },
                        icon: Icon(Icons.message,
                            color: Colors.blue[800], size: 25)),
                    Text(
                      "Text",
                      style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                const SizedBox(
                  width: 80,
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed:(){
                                 const snackBar =   SnackBar(content: Text('Sorry!! function not supported yet'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        icon: Icon(Icons.video_call,
                            color: Colors.blue[800], size: 25)),
                    Text(
                      "Video",
                      style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
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
          Container(
              margin: EdgeInsets.all(18),
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                  color: Colors.blueGrey[50],
                  borderRadius: const BorderRadius.all(Radius.circular(8))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "Contact info",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.local_phone_outlined,
                                  size: 25,
                                  color: Colors.black87,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                          (phoneNumber.isNotEmpty) ?
                                       Text(
                                        phoneNumber.elementAt(0).value,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14)
                                      ):
                                       const Text("No contact found",style:  TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),),
                                     const  Text(
                                       'Mobile',
                                        style:  TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                                 SizedBox(
                                  width: MediaQuery.of(context).size.width *0.25 ,),
                                  IconButton(
                        onPressed: (){
                                const snackBar =   SnackBar(content: Text('Sorry!! function not supported yet'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        icon: const Icon(Icons.video_call,
                            color: Colors.black87, size: 25)),
                                const SizedBox(width: 1),
                                 IconButton(
                       onPressed:()async{
                          final Uri uriLaunch = Uri(
                            scheme: 'sms',
                            path: phoneNumber.elementAt(0).value,
                          );
                          if(await canLaunchUrl(uriLaunch)){
                            await launchUrl(uriLaunch);
                          }else{
                                   const snackBar =   SnackBar(content: Text('action not supported'));
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        },
                        icon:const Icon(Icons.message,
                            color: Colors.black87, size: 25)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
