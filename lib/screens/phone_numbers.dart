import 'package:contacts/Widget/drawer.dart';
import 'package:contacts/utils/renderContact.dart';
import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:contacts/Widget/search_bar_widget.dart';
import '../globalVars/globals.dart' as globals;

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
    final Iterable<Contact> contacts = (await ContactsService.getContacts()).toList();
    setState(() {
      _contacts = contacts;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const NavBar(),
      floatingActionButton: SizedBox(
        height: MediaQuery.of(context).size.height*0.08,
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
                getContacts();
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
            child: SizedBox(
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
          RenderContacts(contacts: _contacts,context: context)
        ],
      ),
    );
  }
}
