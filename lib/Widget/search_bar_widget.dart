import 'package:contacts/screens/search_contact.dart';
import 'package:flutter/material.dart';
import '../globalVars/globals.dart' as globals;

class SearchBarWidget extends StatefulWidget {
  IconData? moreIcon;
  IconData? menuIcon;
  IconData? accountIcon;
  SearchBarWidget([
    this.menuIcon,
    this.moreIcon,
    this.accountIcon,
  ]);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget>{

 bool _isContainerVisible = false;
Color searchBoxBg = Color(0xFFeff3fc);
  List<String> popList = ['Select', 'Select all', 'Customise view'];
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
       preferredSize:Size.zero, 
      child: AppBar(
         iconTheme: IconThemeData(color: Colors.black),
         toolbarHeight: 50.0,
        backgroundColor: searchBoxBg,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        elevation: 0,
        primary: false,
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SearchContact()),
            );
            print("object");
          },
          child: const Text("Search contacts",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_rounded,color: Colors.black54,size: 30,),
            onSelected: ((value) {
              if(value == "Select"){
                print("we are on select option");
              }
            }),
            itemBuilder: (conetxt) {
              return popList
                  .map((e) => PopupMenuItem(
                  value: e,
                          child: Text(
                        e,
                        style: const TextStyle(fontSize: 15),
                      )))
                  .toList();
            },
          ),
          IconButton(onPressed: (){homeProfile();},
           icon:  CircleAvatar(backgroundImage: NetworkImage(globals.profileImage),))

        ],
      ),
    );
  }
  
   homeProfile() {
    print("object");
  }
}
