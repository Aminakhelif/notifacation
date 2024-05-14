import 'package:flutter/material.dart';
import 'package:notification/my_dialog.dart';

class Note1 extends StatelessWidget {
  const Note1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 308,
      height: 140,
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 26, top: 7),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 13, // تغيير القطر حسب الحاجة
                  backgroundColor: Color.fromARGB(
                      255, 14, 13, 13), // تعيين اللون الخلفي المرغوب
                  child: Icon(
                    Icons
                        .verified_user_outlined, // استبدال الأيقونة بأيقونة علامة التعجب
                    size: 12, // تغيير حجم الايقونة حسب الحاجة
                    color: Colors.white, // تعيين اللون المرغوب
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Account Alert',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    letterSpacing: -0.44965860247612,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) => const MyDialog(
                        index: 1,
                        color: Color.fromARGB(255, 248, 248, 248),
                        backgroundColor: Color(0xFFF9F9F9),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 23,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 1),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              'Verify your email address',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w400,
                height: 1.5,
                letterSpacing: -0.44965860247612,
                color: Color(0xFF000000),
                backgroundColor: Color(0xFFF9F9F9),
              ),
            ),
          ),
          const SizedBox(height: 1),
          const Padding(
            padding: EdgeInsets.only(left: 26),
            child: Text(
              'This allows you to retrieve your account if you lose access.',
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
