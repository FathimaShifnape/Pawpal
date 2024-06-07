import 'dart:async';
import 'package:flutter/material.dart';

import '../sign_in_screen/signinpage.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Timer(Duration(seconds: 5),(){
    //   Navigator.of(context).pushReplacement(MaterialPageRoute
    //     (builder:(context) => loginpage(),));
    // }
    // );
  }
  Future<void> checkfirstseen() async{
  SharedPreferences prefs=await Sh
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white,
          child: Center(child: Image(image: AssetImage("assets/splash.jpg"),))
      ),);
  }
}
