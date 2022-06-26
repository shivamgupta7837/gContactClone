import 'package:flutter/material.dart';

class AddContactDetail extends StatelessWidget {
  IconData? icon;
  String? detail;
  AddContactDetail({this.icon,this.detail}) ;

  @override
  Widget build(BuildContext context) {
    return  Column(
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
                      height: 85,
                      width: 340,
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: detail,
                            border: OutlineInputBorder(
                             borderSide: BorderSide(color: Colors.black,style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            );
  }
}