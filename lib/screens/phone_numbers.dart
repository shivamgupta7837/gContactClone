import 'dart:math';
import 'dart:typed_data';
import 'package:contacts/Widget/drawer.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:contacts/Widget/search_bar_widget.dart';
import '../globalVars/globals.dart' as globals;
import '../utils/contact-list.dart';

class PhoneNumbers extends StatefulWidget {
  //  final ContactsService  contacts;
  //  final Function(ContactsService) onContactUpdate;
  //  final Function(ContactsService) onContactDelete;
  // PhoneNumbers(this.contacts,{required this.onContactDelete,requiredthis.onContactUpdate});
  @override
  State<PhoneNumbers> createState() => _PhoneNumbersState();
}

class _PhoneNumbersState extends State<PhoneNumbers> {
bool isMounted = false;
  Iterable<Contact>? _contacts;

  @override
  void initState() {
    getContacts();
    super.initState();
  }

  Future<void> getContacts() async {
    //Make sure we already have permissions for contacts when we get to this
    //page, so we can just retrieve it
    final Iterable<Contact> contacts = await ContactsService.getContacts();
    setState(() {
      _contacts = contacts;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBar(),
      floatingActionButton: SizedBox(
        height: 64.0,
        width: 72.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 198, 222, 244),
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            onPressed: () async{
              try {
                 Contact  contact  = await ContactsService.openContactForm();
                 if(contact != null){
                  getContacts();
                 }
              } catch (e) {
                print(e.toString());
              }
            },
            child: const Icon(Icons.add, color: Colors.black, size: 30),
          ),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              height: 905,
              child: Stack(
                children: [
                  Positioned(
                    top: 32.0,
                    left: 18.0,
                    right: 20.0,
                    child: SearchBarWidget(),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              const Icon(Icons.person_outline_rounded),
              const SizedBox(
                width: 8,
              ),
              Text(
                globals.emailId,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 5),
          const Divider(
            color: Colors.black,
            thickness: 0.5,
            height: 0,
          ),
          _RenderContacts(contacts: _contacts)
        ],
      ),
    );
  }
}
Widget _RenderContacts({required var contacts}){
  var _contacts = contacts;
    return Container(
      padding:const EdgeInsets.only(left: 10),
      height:605,
      color: Colors.white,
      child: _contacts != null
          //Build a list view of all contacts, displaying their avatar and
          // display name
          ? ListView.builder(
            padding: EdgeInsets.only(top: 0),
      itemCount: _contacts.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        Contact? contact = _contacts?.elementAt(index);
        num number = 00;
        Color color=Colors.primaries[Random().nextInt(Colors.primaries.length )];
        return ListTile(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FullDetail(name:contact,phoneNumber: number,bgcolor: color,)));
          },
          contentPadding:
              const EdgeInsets.symmetric( horizontal: 18),
          leading: (contact!.avatar != null && contact.avatar!.isNotEmpty)
              ? const CircleAvatar(
              
                )
              : CircleAvatar(
                backgroundColor: color,
                maxRadius: 25,
                  child: Text(contact.initials(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                ),
          title: Text(contact.displayName ?? '',style: TextStyle(fontSize: 18),),
        );
      }, 
    )
          : const Center(child: CircularProgressIndicator()),
    );
  }