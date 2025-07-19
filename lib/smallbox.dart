import 'package:flutter/material.dart';

class Smallbox extends StatelessWidget {
  final String boxText1, image1;

  const Smallbox({
    super.key,
    required this.boxText1,
    required this.image1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 71,
          height: 78,

          decoration: BoxDecoration(
            color: Color(0xFFD9EBEB),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            'assets/images/$image1',
            
          ),
        ),
        const SizedBox(height: 6),
        Align(
          alignment: Alignment.center,
          child: Text(
            boxText1,
            style: const TextStyle(
              fontSize: 8,
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
