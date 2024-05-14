import 'package:flutter/material.dart';
import 'package:notification/main.dart';

class Note3 extends StatelessWidget {
  const Note3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      margin: const EdgeInsets.fromLTRB(11, 0, 0, 20),
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F9),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(left: 26),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 13, // تغيير القطر حسب الحاجة
                  backgroundColor: Color.fromARGB(
                      255, 14, 13, 13), // تعيين اللون الخلفي المرغوب
                  child: Icon(
                    MyIcons.compress,
                    size: 12, // تغيير حجم الايقونة حسب الحاجة
                    color: Colors.white, // تعيين اللون المرغوب
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Order Success', // حدد لون الرمز كلون أخضر لتمثيل النجاح
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    letterSpacing: -0.44965860247612,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.remove,
                  size: 23,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              'Your order is passed with success!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: -0.44965860247612,
                color: Color(0xFF393939),
                backgroundColor: Color(0xFFF9F9F9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
