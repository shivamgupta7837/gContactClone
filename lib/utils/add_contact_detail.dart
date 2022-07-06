import 'package:flutter/material.dart';

class AddContactDetail extends StatelessWidget {
  IconData? icon;
  String? detail;
  AddContactDetail({this.icon,this.detail}) ;

  @override
  Widget build(BuildContext context) {
    // return OrientationBuilder(builder: (context, Orientation orientation) {
    //       if (orientation == Orientation.portrait) {
    //         return portrateContactDetail();
    //       } else {
    //         return landScapeContactDetail();
    //       }
    //     });
    return   Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:14.0),
                    child: Icon( icon,size: 30),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 80,
                    width: 305,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: detail,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(2),
                          )),
                    ),
                  ),
                ],
              ),
            ],
          );
  }
  
  // Widget portrateContactDetail() {
  //   return Column(
  //           children: [
  //             Row(
  //               // mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.only(left:14.0),
  //                   child: Icon( icon,size: 30),
  //                 ),
  //                 SizedBox(width: 10,),
  //                 Container(
  //                   height: 80,
  //                   width: 300,
  //                   child: TextField(
  //                     decoration: InputDecoration(
  //                         labelText: detail,
  //                         border: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(2),
  //                         )),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         );
  // }
  
  // Widget landScapeContactDetail() {
  //   return Column(
  //           children: [
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.only(left:14.0),
  //                   child: Icon( icon,size: 30),
  //                 ),
  //                 SizedBox(width: 10,),
  //                 Container(
  //                   height: 80,
  //                   // width: 500,
  //                   child: TextField(
  //                     decoration: InputDecoration(
  //                         labelText: detail,
  //                         border: OutlineInputBorder(
  //                           borderRadius: BorderRadius.circular(2),
  //                         )),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         );
  // }
} 


