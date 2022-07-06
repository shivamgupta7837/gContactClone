import 'package:contacts/utils/add_contact_detail.dart';
import 'package:contacts/utils/buildSavedto.dart';
import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  Widget portrate() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const BuildSavedto(),
          const SizedBox(
            height: 18,
          ),
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 173, 208, 236),
            radius: 35,
            child: Center(
                child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_sharp,
                color: Colors.black,
                size: 30,
              ),
            )),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Add photo",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        const  SizedBox(
            height: 20,
          ),
          AddContactDetail(
            icon: Icons.person_outline_outlined,
            detail: "First name",
          ),
          AddContactDetail(
            detail: "Last name",
          ),
          AddContactDetail(
            detail: "Company",
            icon: Icons.corporate_fare_outlined,
          ),
          AddContactDetail(detail: "Phone", icon: Icons.phone),
          AddContactDetail(detail: "Mobile"),
          AddContactDetail(
            detail: "Email",
            icon: Icons.email_outlined,
          ),
          AddContactDetail(detail: "Home"),
          AddContactDetail(
              detail: "Significant date", icon: Icons.calendar_month),
          AddContactDetail(detail: "Birthday"),
        ],
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey[50],
          actions: [
            Row(
              children: [
                Container(
                  width: 90,
                  height: 38,
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blue[900],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                      child: const Text(
                        "Save",
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )),
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
              size: 30,
            ),
          ],
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            "Create contact",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
        body: OrientationBuilder(builder: (context, Orientation orientation) {
          if (orientation != Orientation.portrait) {
            return landscape(context);
          } else {
            return portrate();
          }
        }));
  }

  Widget landscape(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
           Row(
             children: [
               Container(
                padding: const EdgeInsets.only(top: 105),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.4,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
            backgroundColor: Color.fromARGB(255, 173, 208, 236),
            radius: 55,
            child: Center(
                    child: IconButton(
              onPressed: () {},
              icon: const Icon(
                    Icons.camera_alt_sharp,
                    color: Colors.black,
                    size: 30,
              ),
            )),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Add photo",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
                  ],
                ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.6,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                children: [
                 const  BuildSavedto(),
                 const  SizedBox(height: 25,),
                   AddContactDetail(
              icon: Icons.person_outline_outlined,
              detail: "First name",
              
                    ),
                    AddContactDetail(
              detail: "Last name",
                    ),
                    AddContactDetail(
              detail: "Company",
              icon: Icons.corporate_fare_outlined,
                    ),
                    AddContactDetail(detail: "Phone", icon: Icons.phone),
                    AddContactDetail(detail: "Mobile"),
                    AddContactDetail(
              detail: "Email",
              icon: Icons.email_outlined,
                    ),
                    AddContactDetail(detail: "Home"),
                    AddContactDetail(
                detail: "Significant date", icon: Icons.calendar_month),
                    AddContactDetail(detail: "Birthday"),
                ],
              ),
            ),
          )
             ],
           ),
        ],
      ),
    );
  }
}
