import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pawpal/presentation/home_screen/home1.dart';

import '../dashboard_screen/dash.dart';

class message extends StatelessWidget {
  const message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffbF8E1E1),
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
          title: Text("Conversations",
              style: TextStyle(color: Colors.white, fontSize: 18)),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                    'assets/logo.png',
                  ),opacity: 0.2,),),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      offset: Offset(0, 2),
                                      blurRadius: 1)
                                ],
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white),
                            width: 300,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 15),
                                border: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "Search Here",
                                prefixIcon: Icon(Icons.search),
                                hintStyle: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 550,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(400),
                                      child: Image.asset(
                                        "assets/OIP.jpg",
                                        height: 60,
                                        width: 60,
                                      ),
                                    ),
                                    SizedBox(width: 30),
                                    Text(
                                      "Olivia",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Icon(
                                      CupertinoIcons.clock,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '9 min ago',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ]),
                ))));
  }
}
