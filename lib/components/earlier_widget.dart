import 'package:flutter/material.dart';

class EarlierWidget extends StatelessWidget {
  const EarlierWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.only(left: 20), // Added space below the last rectangle
      child: Text(
        'Earlier',
        style: TextStyle(
          fontFamily: 'Poppins',
          fontSize: 18,
          fontWeight: FontWeight.w600,
          height: 1.5,
          letterSpacing: -0.44965860247612,
          color: Color(0xFF393939),
        ),
      ),
    );
  }
}
