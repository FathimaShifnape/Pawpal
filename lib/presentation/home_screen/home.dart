import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawpal/presentation/home_screen/home1.dart';
import 'package:pawpal/presentation/sign_in_screen/signinpage.dart';
import 'package:slide_to_act/slide_to_act.dart';

import '../dashboard_screen/dash.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/pet.jpg",
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.black26.withOpacity(0.4), BlendMode.srcOver),
        ),
      ),
      child: Column(children: [
        Image.asset(
          "assets/logo.png",
        ),
        Spacer(),
        Text(
          "Find You Best\nCompanion With Us",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
        Center(
          child: Container(
            height: 150,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Builder(
                  builder: (context) {
                    final GlobalKey<SlideActionState> _key = GlobalKey();
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SlideAction(
                        key: _key,
                        onSubmit: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>  MyHomePage(),
                              ));
                        },
                        child: Text("Get Start",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        innerColor: Color(0xffbA54D79),
                        outerColor: Colors.white,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
