import 'package:blinkit/bigbox2.dart';
import 'package:blinkit/topbar.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  var categroy = [
    {
      "img": "image44.png",
      "text": "AmulTaaza\nToned",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image45.png",
      "text": "Potato (Aloo)",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image46.png",
      "text": "Hybrid Tomato",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image44.png",
      "text": "AmulTaaza\nToned",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image45.png",
      "text": "Potato (Aloo)",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image46.png",
      "text": "Hybrid Tomato",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
  ];

  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Topbar(),
          SizedBox(height: 20),

          Column(
            children: [
              Image.asset("assets/images/cart.png"),
              SizedBox(height: 20),

              Text(
                "Reordering will be easy",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Items you order will show up here so you can buy\n them again easily.",
                  style: TextStyle(
                    fontFamily: 'poppins',
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Align(
              alignment: Alignment.topLeft,

              child: Text(
                "Bestsellers",
                style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
         LayoutBuilder(
  builder: (context, constraints) {
    double itemWidth =
        (constraints.maxWidth - (categroy.length + 1) * 8) / categroy.length;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categroy.length, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: itemWidth,
              child: Bigbox2(
                boxText1: categroy[index]["text"].toString(),
                boxText2: categroy[index]["text2"].toString(),
                image1: categroy[index]["img"].toString(),
                image2: categroy[index]["img2"].toString(),
              ),
            ),
          );
        }),
      ),
    );
  },
)

        ],
      ),
    );
  }
}
