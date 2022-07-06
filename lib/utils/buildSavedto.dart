import 'package:flutter/material.dart';
import '../globalVars/globals.dart' as globals;

class BuildSavedto extends StatelessWidget {
  const BuildSavedto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
          ),
          const SizedBox(width: 10),
          SizedBox(
            height: 38,
            child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    side: const BorderSide(
                        color: Colors.black54, style: BorderStyle.solid),
                    backgroundColor: Colors.grey[50],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Row(
                  children: [
                    SizedBox(
                      height: 40,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(globals.profileImage),
                      ),
                    ),
                     Text(
                      globals.eailId,
                      style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    const Icon(Icons.arrow_drop_down, color: Colors.black)
                  ],
                )),
          )
        ],
      ),
    );
  }
}
