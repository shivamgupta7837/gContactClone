import 'package:contacts/Widget/drawer.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:contacts/Widget/search_bar_widget.dart';
import 'package:permission_handler/permission_handler.dart';
import '../globalVars/globals.dart' as globals;
import 'add_contact.dart';


class PhoneNumbers extends StatefulWidget {
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddContact()),
              );
              //  ContactsService.openContactForm()
            },
            child: const Icon(Icons.add, color: Colors.black, size: 30),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 105,
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
          ),
          GestureDetector(
             onTap:(){
                _askForPermission();
              },
            child: _renderContacts(contacts: _contacts),
          )
        ],
      ),
    );
  }

  void _askForPermission() async {
    //status can either denied,restricted,granted or permanent denied
    final status = await Permission.contacts.status;
    //we alredy give permission
    if (status.isGranted) {
      if(isMounted){}
     Navigator.push(context, MaterialPageRoute(builder: (context)=>_renderContacts(contacts: null,)));
    } else if (status.isDenied) {
      //we didn't  ask for permission aready or we denied
     print(" permission denied");
    }
    if (await Permission.contacts.request().isGranted) {
      print("permision was granted");
    }
  }
}

class _renderContacts extends StatelessWidget {
  const _renderContacts({
    Key? key,
    required Iterable<Contact>? contacts,
  }) : _contacts = contacts;

  final Iterable<Contact>? _contacts;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      height:589,
      color: Colors.white,
      child: _contacts != null
          //Build a list view of all contacts, displaying their avatar and
          // display name
          ? ListView.builder(
            padding: EdgeInsets.only(top: 0),
      itemCount: _contacts?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        Contact? contact = _contacts?.elementAt(index);
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric( horizontal: 18),
          leading: (contact!.avatar != null && contact.avatar!.isNotEmpty)
              ? CircleAvatar(
                )
              : CircleAvatar(
                maxRadius: 25,
                  child: Text(contact.initials()),
                ),
          title: Text(contact.displayName ?? '',style: TextStyle(fontSize: 18),),
          // subtitle: Text(number),
          //This can be further expanded to showing contacts detail
          // onPressed().
        );
      },
    )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
