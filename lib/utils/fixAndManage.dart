import 'package:flutter/material.dart';
import '../globalVars/globals.dart' as globals;

class FixManage extends StatelessWidget {
  const FixManage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(globals.profileImage),
                maxRadius: 28,
              )
            ],
          ),
        ),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 30, left: 8.0),
              child: Text(
                "Fix & manage",
                style: TextStyle(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Container(
          height: 380,
          child: GridView.count(
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 2.9,
              padding: EdgeInsets.only(left: 15, right: 15, top: 30),
              crossAxisCount: 2,
              children: [
                cardFixManage(
                  icon: Icons.auto_fix_high,
                  text: "Merge and fix",
                ),
                cardFixManage(
                  icon: Icons.sim_card_outlined,
                  text: "Import from SIM",
                ),
                cardFixManage(
                  icon: Icons.cloud_download_outlined,
                  text: "Restore contacts",
                ),
                cardFixManage(
                  icon: Icons.file_download_outlined,
                  text: "Import from file",
                ),
                cardFixManage(
                  icon: Icons.file_upload_outlined,
                  text: "Export to file",
                ),
                cardFixManage(
                  icon: Icons.delete,
                  text: "Bin",
                ),
                cardFixManage(
                  icon: Icons.settings,
                  text: "Setting",
                ),
              ]),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text("Other tools"),
        ),
        SizedBox(height: 20),
        Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: const [
                Icon(Icons.block),
                Text(
                  " Blocked numbers",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                )
              ],
            )),
        const SizedBox(
          height: 7,
        ),
        const Divider(
          height: 20,
          color: Colors.black,
          thickness: 0.5,
          indent: 65,
        )
      ],
    );
  }
}

class cardFixManage extends StatelessWidget {
  String text;
  IconData icon;
  Color iconColor;
  Color gridColor;
  cardFixManage({required this.icon, required this.text})
      : iconColor = Color(0xFF0f57d2),
        gridColor = Color(0xFFeff3fc);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: gridColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(
            icon,
            color: iconColor,
            size: 28,
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w400, fontSize: 16),
          ),
        ]),
      ),
    );
  }
}
