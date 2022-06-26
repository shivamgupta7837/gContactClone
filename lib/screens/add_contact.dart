import 'package:contacts/utils/add_contact_detail.dart';
import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  const AddContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        actions: [
          Row(
            children: [
              Container(
                width: 95,
                height: 42,
                child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                    child: const Text(
                      "Save",
                      style: TextStyle(fontSize: 17, color: Colors.white),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSavedto(),
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
                  color: Colors.black87,
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
            SizedBox(
              height: 20,
            ),
            AddContactDetail(icon: Icons.person_outline_outlined, detail: "First name",),
            AddContactDetail(detail: "Last name",),
            AddContactDetail(detail: "Company",icon: Icons.corporate_fare_outlined,),
            AddContactDetail(detail: "Phone",icon: Icons.phone),
            AddContactDetail(detail: "Mobile"),
            AddContactDetail(detail: "Email",icon: Icons.email_outlined,),
            AddContactDetail(detail: "Home"),
            AddContactDetail(detail: "Significant date",icon: Icons.calendar_month),
            AddContactDetail(detail: "Birthday"),
            

          ],
        ),
      ),
    );
  }

  Container _buildSavedto() {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      color: Colors.grey[350],
      height: 65,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Saved to",
            style: TextStyle(
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 38,
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    side: const BorderSide(
                        color: Colors.black, style: BorderStyle.solid),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Row(
                  children: const [
                    Icon(
                      Icons.account_circle,
                      color: Colors.black,
                      size: 25,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "abc@gmail.com",
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(Icons.arrow_drop_down, color: Colors.black)
                  ],
                )),
          )
        ],
      ),
    );
  }
}
