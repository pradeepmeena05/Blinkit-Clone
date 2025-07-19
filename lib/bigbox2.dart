import 'package:flutter/material.dart';

class Bigbox2 extends StatelessWidget {
  final String boxText1, boxText2, image1, image2;

  const Bigbox2({
    super.key,
    required this.boxText1,
    required this.boxText2,
    required this.image1,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset('assets/images/$image1'),
        ),
        const SizedBox(height: 6),
        Text(
  boxText1,
  style: const TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    fontFamily: 'poppins',
    color: Colors.black,
  ),
  textAlign: TextAlign.start,
  maxLines: 2,
  overflow: TextOverflow.ellipsis,
),

        const SizedBox(height: 4),
        Row(
          children: [
            Image.asset('assets/images/$image2', height: 15, width: 15),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                boxText2,
                overflow: TextOverflow.visible,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF9C9C9C),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          children: const [
            Icon(Icons.money, size: 15),
            SizedBox(width: 4),
            Text(
              "79",
              style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
