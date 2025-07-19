import 'package:flutter/material.dart';

class Bigbox extends StatelessWidget {
  final String boxText;
  final String boxImage;

  const Bigbox({
    super.key,
    required this.boxText,
    required this.boxImage,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
        mainAxisSize: MainAxisSize.min, // ✅ allows content to size naturally
        children: [
          Text(
            boxText,
            style: const TextStyle(
              fontFamily: 'poppins',
              fontSize: 10,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.3,
              color: Color(0xFF000000),
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 6),
          
          Flexible(
            child: Image.asset(
              'assets/images/$boxImage',
              fit: BoxFit.contain,
              width: double.infinity,
              height: 60, 
            ),
          ),
        ],
      );
    
  }
}
