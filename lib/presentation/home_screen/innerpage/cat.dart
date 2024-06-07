import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'catss.dart';

class cat extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  const cat(
      {super.key,
      required this.image,
      required this.name,
      required this.price});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffbF8E1E1),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => dog(),
                )),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/logo.png',
                ),
                opacity: 0.2,
              ),
            ),
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(widget.image))),
              SizedBox(
                height: 15,
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.price,
                style: TextStyle(color: Color(0xffbA54D79), fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)),
                  height: 130,
                  width: 280,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Center(
                      child: Text(
                          "About\n        "
                          "The Bulldog is a British breed of dog of mastiff type. It may also be known as the English Bulldog or British Bulldog.",
                          style: TextStyle(fontSize: 15)),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          height: 70,
                          width:
                              70, // Ensure width and height are the same for a circle
                          child: Center(
                            child: Text('1'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Age")
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          height: 70,
                          width:
                              70, // Ensure width and height are the same for a circle
                          child: Center(
                            child: Text('5.2kg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Age")
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          height: 70,
                          width:
                              70, // Ensure width and height are the same for a circle
                          child: Center(
                            child: Text('Male'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Weight")
                    ],
                  ),
                  Column(
                    children: [
                      ClipOval(
                        child: Container(
                          color: Colors.white,
                          height: 70,
                          width:
                              70, // Ensure width and height are the same for a circle
                          child: Center(
                            child: Text('Sex'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Health")
                    ],
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 140,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_shopping_cart,
                        color: Colors.black), // Replace with your desired icon
                    SizedBox(width: 8), // Space between icon and text
                    Text('Add to cart',
                        style: TextStyle(color: Color(0xffbA54D79))),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 140,
              height: 40,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shop,
                        color: Colors.black), // Replace with your desired icon
                    SizedBox(width: 8), // Space between icon and text
                    Text(
                      'Buy Now',
                      style: TextStyle(
                          color: Color(0xffbA54D79)), // Adjust text as needed
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
