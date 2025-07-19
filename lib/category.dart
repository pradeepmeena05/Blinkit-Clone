import 'package:blinkit/smallbox.dart';
import 'package:blinkit/topbar.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  var grocerykitchen = [
    {"img": "image41.png", "text": "Vegetables & \nFruits"},
    {"img": "image42.png", "text": "Atta, Dal & \nRice"},
    {"img": "image43.png", "text": "Oil, Ghee & \nMasala"},
    {"img": "image442.png", "text": "Dairy, Bread & \nMilk"},
    {"img": "image 45.png", "text": "Biscuits & \nBakery"},
  ];

  var secondgrocery = [
    {"img": "image21.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "image22.png", "text": "Kitchen &\n Appliances"},
    {"img": "image23.png", "text": "Tea & \nCoffees"},
    {"img": "image24.png", "text": "Ice Creams & \nmuch more"},
    {"img": "image25.png", "text": "Noodles & \nPacket Food"},
  ];

  var snacksanddrinks = [
    {"img": "image31.png", "text": "Chips &\n Namkeens"},
    {"img": "image32.png", "text": "Sweets & \nChocolates"},
    {"img": "image33.png", "text": "Drinks & \nJuices"},
    {"img": "image34.png", "text": "Sauces &\n Spreads"},
    {"img": "image35.png", "text": "Beauty &\n Cosmetics"},
  ];

  var hosuehold = [
    {"img": "image36.png", "text": "Cleaning Supplies"},
    {"img": "image37.png", "text": "Home Essentials"},
    {"img": "image38.png", "text": "Puja Items"},
    {"img": "image39.png", "text": "Stationery"},
    {"img": "image40.png", "text": "Pet Care"},
  ];

  Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Topbar(),
            SizedBox(height: 20),

            buildSectionTitle("Grocery & Kitchen"),
            SizedBox(height: 20),
            buildHorizontalList(grocerykitchen),


            buildHorizontalList(secondgrocery),
                  SizedBox(height: 20),
            buildSectionTitle("Snacks & Drinks"),
            SizedBox(height: 20),
            buildHorizontalList(secondgrocery),
 SizedBox(height: 20),
            buildSectionTitle("Household Items"),
            SizedBox(height: 20),
            buildHorizontalList(hosuehold),
          ],
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: 'poppins',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget buildHorizontalList(List<Map<String, String>> items) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double itemWidth =
            (constraints.maxWidth - (items.length + 1) * 8) / items.length;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(items.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: itemWidth,
                  child: Smallbox(
                    boxText1: items[index]["text"]!,
                    image1: items[index]["img"]!,
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
