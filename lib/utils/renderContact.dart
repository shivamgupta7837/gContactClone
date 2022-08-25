import 'dart:math';
import 'package:contacts/utils/contactfulldetail.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';

class RenderContacts extends StatelessWidget {

    final contacts;
  RenderContacts({required  this.contacts,required BuildContext context});
  
   
   @override
     Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Container(
        padding:const EdgeInsets.only(left: 10),
        height:MediaQuery.of(context).size.height*0.74,
        color: Colors.white,
        child: contacts != null
            ? ListView.builder(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.only(top: 0),
        itemCount: contacts.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          Contact? contact = contacts[index];
          Color color=Colors.primaries[Random().nextInt(Colors.primaries.length )];
          String? name = contact?.displayName;
          var number = contact!.phones;
          return ListTile(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FullDetail(avtarName:contact,phoneNumber: number,bgcolor: color,fullName:name)));
            },
            contentPadding:
                const EdgeInsets.symmetric( horizontal: 18),
            leading: CircleAvatar(
                  backgroundColor: color,
                  maxRadius: 25,
                    child: Text(contact.initials(),style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                  ),
            title: Text(name ?? '',style:const TextStyle(fontSize: 18),), 
          );
        }, 
      )
            : const Center(child: CircularProgressIndicator()),
      ),
    ); 
   }
}