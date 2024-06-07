import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../dashboard_screen/dash.dart';


class category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbF8E1E1),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () { Get.to(MyHomePage());
                // Navigator.push(
                // context,
                // MaterialPageRoute(
                //   builder: (context) => MyHomePage(),
                // )),
            child: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xffbA54D79),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/back.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
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
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
                Row(
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Dog',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  "assets/dogs.jpg",
                                  height: 75,
                                  width: 75,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Cat',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  "assets/catss.jpg",
                                  height: 75,
                                  width: 75,
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Fish',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  "assets/fish.jpg",
                                  height: 75,
                                  width: 75,
                                )),
                          ],
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Food',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/dogs.jpg",
                                      height: 65,
                                      width: 65,
                                    )),
                                // SizedBox(width: 5),
                                Icon(
                                  CupertinoIcons.plus,
                                  size: 30,
                                ),
                              ],
                            ),
                            Divider(color: Colors.black,thickness: 2,height: 3,)
                          ],
                        ),Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Treats',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/dogs.jpg",
                                      height: 65,
                                      width: 65,
                                    )),
                                // SizedBox(width: 5),
                                Icon(
                                  CupertinoIcons.plus,
                                  size: 30,
                                ),
                              ],
                            ),
                            Divider(color: Colors.black,thickness: 2,height: 3,)
                          ],
                        ),Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Supplies',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/dogs.jpg",
                                      height: 65,
                                      width: 65,
                                    )),
                                // SizedBox(width: 5),
                                Icon(
                                  CupertinoIcons.plus,
                                  size: 30,
                                ),
                              ],
                            ),
                            Divider(color: Colors.black,thickness: 2,height: 3,)
                          ],
                        )
                      ],
                    )
                  ],
                ), Divider(color: Colors.black,height: 3,)
              ],
            ),
          )),
  );
  }
}
