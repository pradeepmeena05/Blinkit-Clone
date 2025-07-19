import 'package:blinkit/topbar.dart';
import 'package:flutter/material.dart';

class Printscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Topbar(),

          Expanded(
            child: Container(
              width: double.infinity,

              color: const Color.fromARGB(255, 248, 234, 181),
              child: Column(
                children: [
                  SizedBox(height: 60),

                  Text(
                    "Print Store",
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "Blinkit ensures secure prints at every stage",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF9C9C9C),
                      fontFamily: 'inter',
                    ),
                  ),

                  SizedBox(height: 40),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 163,
                      width: 361,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),

                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Documents",
                                  style: TextStyle(
                                    fontFamily: 'inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),

                                Row(
                                  children: [
                                    Image.asset("assets/images/star.png"),
                                    SizedBox(width: 10),
                                    Text(
                                      "Price starting at rs 3/page",
                                      style: TextStyle(
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9C9C9C),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/images/star.png"),
                                    SizedBox(width: 10),
                                    Text(
                                      "Paper quality: 70 GSM",
                                      style: TextStyle(
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9C9C9C),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Image.asset("assets/images/star.png"),
                                    SizedBox(width: 10),
                                    Text(
                                      "Single side prints",
                                      style: TextStyle(
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF9C9C9C),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),

                                SizedBox(height: 10),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Upload Files",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'poppins',
                                      color: Colors.white,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF27AF34),
                                    minimumSize: Size(125, 40),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Positioned(
                              right: 20,
                              bottom: 30,
                           child: Image.asset("assets/images/image62.png"),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
