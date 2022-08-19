import 'package:contacts/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    _askPermission();
    _navigator();
  }
  

  _navigator()async{
    await Future.delayed(const Duration(milliseconds: 1500),
    (){});
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.only(top: 300),
          height: MediaQuery.of(context).size.height,
          child: Stack(
            // mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/logocontact.png'),
              maxRadius: 60,
            ),
            // SizedBox(height: 300,),
            Positioned(top: 440,
              child: Text('Google ',style: TextStyle(fontSize: 35,),))
            ],
          ),
        ),
      ),
    );
  }
  
  _askPermission() async{
     PermissionStatus contactStatus =  await Permission.contacts.request();
            if(contactStatus == PermissionStatus.granted){
              if(!mounted){}
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
            }
            if(contactStatus == PermissionStatus.denied){
              _askPermission();
            }
            if(contactStatus == PermissionStatus.permanentlyDenied){
              openAppSettings();
            }
  }
}