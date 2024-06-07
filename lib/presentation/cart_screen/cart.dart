import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../dashboard_screen/dash.dart';

class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffbF8E1E1),
    appBar: AppBar(
    leading: GestureDetector(
    onTap: () => Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => MyHomePage(),
    )),
    child: Icon(Icons.arrow_back)),
    backgroundColor: Color(0xffbA54D79),
    centerTitle: true,
    title: Text("Cart",
    style: TextStyle(color: Colors.white, fontSize: 18)),
    ),body: Container(decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/logo.png',
          ),opacity: 0.2,),),),
    );
  }
}
