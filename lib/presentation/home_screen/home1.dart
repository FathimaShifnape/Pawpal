import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'innerpage/catss.dart';

class home1 extends StatelessWidget {
  const home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffbF8E1E1),
        appBar: AppBar(
          leading: Icon(Icons.sort),
          backgroundColor: Color(0xffbA54D79),
          title: Text("Hello,\n      Belly",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
                opacity: 0.2,
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
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
              SizedBox(
                height: 10,
              ),
              Text(
                '"Discover \n          find a new pet for you"',
                style: GoogleFonts.poppins(
                    color: Color(0xffA54D79),
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Category",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/dogs.jpg",
                            height: 100,
                            width: 100,
                          )),
                      Text(
                        "Dogs",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),

                  GestureDetector(onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => dog(),
                      )),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "assets/catss.jpg",
                              height: 100,
                              width: 100,
                            )),
                        Text(
                          "Cats",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image.asset(
                            "assets/fish.jpg",
                            height: 100,
                            width: 100,
                          )),
                      Text(
                        "Fish",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Food",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/food.jpg",
                            height: 100,
                            width: 100,
                          )),
                      Text(
                        "Dogs",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/toys.jpg",
                            height: 100,
                            width: 100,
                          )),
                      Text(
                        "Cats",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/fishfood.jpg",
                            height: 100,
                            width: 100,
                          )),
                      Text(
                        "Fish",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text("Offer Zone !!!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/Screenshot.png",
                        height: 180,
                        width: 200,
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Offer Zone !!!",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    List<String> imageAssets = [
                      "assets/spfish.png",
                      "assets/spcat.png",
                      "assets/spfish.png",
                      "assets/spcat.png",
                    ];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        imageAssets[index],
                      ),
                    );
                  },
                ),
              ),
            ]),
          ),
        )));
  }
}
