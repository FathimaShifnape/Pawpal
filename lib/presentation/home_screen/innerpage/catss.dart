import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pawpal/presentation/home_screen/controller/homecontroller.dart';
import 'package:pawpal/presentation/home_screen/innerpage/cat.dart';
import '../../dashboard_screen/dash.dart';

class dog extends StatefulWidget {
  const dog({super.key});

  @override
  State<dog> createState() => _dogState();
}

class _dogState extends State<dog> {
  final datacontroller = Get.put(homecontroller());
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
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Cats",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20)),
                SizedBox(
                  height: 10,
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: datacontroller.cats.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 150),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => cat(
                              image: datacontroller.cats[index].image,
                              name: datacontroller.cats[index].image,
                              price: datacontroller.cats[index].price,
                            ),
                          )),
                      child: Column(
                        children: [
                          Image.asset(datacontroller.cats[index].image, width: 130, height: 130),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            datacontroller.cats[index].name,
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
