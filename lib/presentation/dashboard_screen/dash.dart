import 'package:flutter/material.dart';
import 'package:pawpal/presentation/cart_screen/cart.dart';
import 'package:pawpal/presentation/home_screen/home1.dart';
import 'package:pawpal/presentation/chat_screen/message.dart';

import '../category_screen/category.dart';




class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    home1(),
    message(),
    cart(),
    category(),
    Container(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffbF8E1E1),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: ClipRRect(borderRadius:BorderRadius.circular(300) ,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mark_email_unread,size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart,size: 30),
              label: '',
            ), BottomNavigationBarItem(
              icon: Icon(Icons.category,size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle,size: 30),
              label: '',
            ),
          ],

          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xffbA54D79),
          unselectedItemColor: Color(0xffbE9A8C9),
          onTap: _onItemTapped,
          showSelectedLabels: false,showUnselectedLabels: false,
          backgroundColor: Colors.white, // Optional: background color for the bottom nav bar
    type: BottomNavigationBarType.fixed, // Optional: fixes the layout to prevent items from shifting

        ),
      ),
    );
  }
}

