import 'package:blinkit/bigbox.dart';
import 'package:blinkit/bigbox2.dart';
import 'package:blinkit/bottom.dart';
import 'package:blinkit/smallbox.dart';
import 'package:flutter/material.dart';
import '';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final bigBox = [
    {"img": "image50.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image51.png", "text": "Diwali \n Gifts"},
    {"img": "image52.png", "text": "Appliances  \n & Gadgets"},
    {"img": "image53.png", "text": "Home \n & Living"},
  ];

  final categroy = [
    {
      "img": "image54.png",
      "text": "Golden Glass Wooden\n Lid Candle (Oudh)",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image57.png",
      "text": "Royal Gulab Jamun\n By Bikano",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image63.png",
      "text": "Bikaji Bhujia",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image54.png",
      "text": "Golden Glass Wooden\n Lid Candle (Oudh)",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image57.png",
      "text": "Royal Gulab Jamun\n By Bikano",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
    {
      "img": "image63.png",
      "text": "Bikaji Bhujia",
      "img2": "timer4.png",
      "text2": "16 MINS",
    },
  ];

  final smallbox = [
    {"img": "image462.png", "text": "Vegetables & \n Fruits"},
    {"img": "image47.png", "text": "Atta, Dal & \n Rice"},
    {"img": "image48.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image49.png", "text": "Dairy, Bread &\n Milk"},
    {"img": "image492.png", "text": "Biscuits &\nBakery"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60), // height of bottom bar
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 190,
                      width: double.infinity,
                      color: const Color(0xFFEC0505),
                      child: Column(
                        children: [
                          const SizedBox(height: 30),
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                "Blinkit in",
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                "16 minutes",
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              SizedBox(width: 20),
                              Text(
                                "HOME - ",
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Flexible(
                                child: Text(
                                  "Sujal Dave, Ratanada, Jodhpur (Raj)",
                                  style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 10,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      right: 20,
                      bottom: 110,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        radius: 15,
                        child: Icon(Icons.person, color: Colors.white, size: 20),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 30,
                      right: 20,
                      child: Container(
                        height: 37,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0XFFC5C5C5)),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: "Search 'ice-cream'",
                            contentPadding: EdgeInsets.zero,
                            prefixIcon: Icon(Icons.search),
                            suffixIcon: Icon(Icons.mic),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.white,
                ),

                // 🔴 Diwali banner with red background
                Container(
                  color: const Color(0xFFEC0505),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(child: Image.asset('assets/images/image60.png')),
                            Flexible(child: Image.asset('assets/images/image55.png')),
                            const Text(
                              "Mega Diwali Sale",
                              style: TextStyle(
                                fontFamily: 'PTserif',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Flexible(child: Image.asset('assets/images/image56.png')),
                            Flexible(child: Image.asset('assets/images/image61.png')),
                          ],
                        ),
                        const SizedBox(height: 10),
                        LayoutBuilder(
                          builder: (context, constraints) {
                            double itemWidth =
                                (constraints.maxWidth - (bigBox.length + 1) * 8) /
                                    bigBox.length;
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(bigBox.length, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEAD3D3),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      width: itemWidth,
                                      child: Bigbox(
                                        boxText: bigBox[index]["text"].toString(),
                                        boxImage: bigBox[index]["img"].toString(),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),

                // ⚪ White background section
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      LayoutBuilder(
                        builder: (context, constraints) {
                          double itemWidth = (constraints.maxWidth -
                                  (categroy.length + 1) * 8) /
                              categroy.length;
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
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Grocery & Kitchen",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        height: 140,
                        width: double.infinity,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            double itemWidth = (constraints.maxWidth -
                                    (smallbox.length + 1) * 8) /
                                smallbox.length;
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children:
                                    List.generate(smallbox.length, (index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      width: itemWidth,
                                      child: Smallbox(
                                        boxText1:
                                            smallbox[index]["text"].toString(),
                                        image1:
                                            smallbox[index]["img"].toString(),
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
