import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pawpal/presentation/home_screen/home1.dart';
import 'package:pawpal/presentation/sign_up_screen/signup.dart';
import 'package:pawpal/presentation/splash_screen/splashscreen.dart';

import '../dashboard_screen/dash.dart';
import '../home_screen/home.dart';

class loginpage extends StatefulWidget {
  loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/paw.jpg",
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black26.withOpacity(0.4), BlendMode.srcOver),
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset("assets/logo.png"),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                      prefixIcon: Icon(Icons.person,
                          color: Color(0xffbA54D79), size: 30),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffbA8A7A7), width: 2.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffbA8A7A7), width: 2.0),
                      ),
                      hintText: "username",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white),
                      // Center align the hint text
                    ),
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    keyboardAppearance: Brightness.dark,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 70),
                      prefixIcon:
                          Icon(Icons.lock, color: Color(0xffbA54D79), size: 30),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffbA8A7A7), width: 2.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffbA8A7A7), width: 2.0),
                      ),
                      hintText: "password",
                      hintStyle: GoogleFonts.poppins(
                          fontSize: 20, color: Colors.white),
                      suffixIcon: visible
                          ? Icon(
                              Icons.visibility,
                              color: Color(0xffbA54D79),
                            )
                          : Icon(Icons.visibility_off,
                              color: Color(0xffbA54D79)),
                    ),
                    onTap: () {
                      setState(() {
                        visible = !visible;
                      });
                    },
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.white),
                    keyboardAppearance: Brightness.dark,
                    // Center align the hint text
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Forget Password?",
                    style:
                        GoogleFonts.poppins(fontSize: 13, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Center(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          maximumSize: Size(130, 70),
                          backgroundColor: Color(0xffbACA0A0).withOpacity(
                              0.5), // Use backgroundColor instead of color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>home(),
                            ),
                          );
                        },
                        child: Center(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Text(
                      "Don't have an account?",
                      style: GoogleFonts.poppins(
                          fontSize: 12, color: Colors.white),
                    ),
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => signup(),));
                    },
                      child: Text(
                        "Signup",
                        style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ]),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 2,
                        width: 110,
                        color: Colors.grey,
                      ),
                      Text("Sign up with",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Container(
                        height: 2,
                        width: 100,
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white),
                          child: Image.asset("assets/google.png", width: 30),
                        ),
                      ),

                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Image.asset("assets/instagram.png", width: 30),
                      ), // Add spacing between icons
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Image.asset("assets/facebook.png", width: 30),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
