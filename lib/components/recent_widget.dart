import 'package:flutter/material.dart';

class RecentWdget extends StatelessWidget {
  const RecentWdget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          const SizedBox(
              width: 10), // Add some space between the circle and the text
          const Text(
            'Recent',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 1.5,
              letterSpacing: -0.44965860247612,
              color: Color(0xFF393939),
            ),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 230, 231, 230),
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 113, 146, 75),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
