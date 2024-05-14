import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class MyIcons {
  static const IconData compress =
      IconData(0xe184, fontFamily: 'MaterialIcons');
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double right = 16.0; // Set the desired right padding value

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Notification',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontFamily: Theme.of(context).textTheme.headline6!.fontFamily,
            ),
          ),
          centerTitle: true,
          elevation: 1.0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(
              MyCustomBackIcon.iconData,
              color: Colors.black,
            ),
            onPressed: () {
              // Add any function to navigate to the previous screen here
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
               showDialog(context: context, builder: (context) {
               return AlertDialog(
               title: Icon(Icons.delete_outline,
               color: Color.fromARGB(255, 14, 13, 13)),
                content: Text("Are you sure you want to delete this notification?"),
  );
});
                // Add any action you want to perform here when the icon is pressed
              },
              icon: Icon(Icons.delete_outline,
                  color: Color.fromARGB(255, 14, 13, 13)),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(right: right),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Mark All As Read ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    SizedBox(
                        width:
                            10), // Add some space between the circle and the text
                    Text(
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
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 230, 231, 230),
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          '2',
                          style: TextStyle(
                            fontSize: 12,
                            color: const Color.fromARGB(255, 113, 146, 75),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1),
              Container(
                width: 300,
                height: 130,
                margin: EdgeInsets.fromLTRB(11, 0, 0, 20),
                decoration: BoxDecoration(
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, top: 7),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 13, // تغيير القطر حسب الحاجة
                            backgroundColor: const Color.fromARGB(
                                255, 14, 13, 13), // تعيين اللون الخلفي المرغوب
                            child: Icon(
                              Icons
                                  .verified_user_outlined, // استبدال الأيقونة بأيقونة علامة التعجب
                              size: 12, // تغيير حجم الايقونة حسب الحاجة
                              color: Colors.white, // تعيين اللون المرغوب
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
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
                      padding: const EdgeInsets.only(left: 26),
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
                    SizedBox(height: 1),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
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
              ),
              SizedBox(height: 1),
              Container(
                width: 308,
                height: 100,
                margin: EdgeInsets.fromLTRB(11, 0, 0, 10), // Adjusted margin
                decoration: BoxDecoration(
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, top: 7),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 13, // تغيير القطر حسب الحاجة
                            backgroundColor: const Color.fromARGB(
                                255, 14, 13, 13), // تعيين اللون الخلفي المرغوب
                            child: Icon(
                              Icons
                                  .discount, // استبدال الأيقونة بأيقونة discount
                              size: 12, // تغيير حجم الايقونة حسب الحاجة
                              color: Colors.white, // تعيين اللون المرغوب
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            '20% Discount',
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
                      padding: const EdgeInsets.only(left: 26),
                      child: Text(
                        'Receive 20% discount for all Sportswear. Take full advantage!',
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
              ),
              SizedBox(height: 2),
              Padding(
                padding: EdgeInsets.only(
                    left: 20), // Added space below the last rectangle
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
              ),
              SizedBox(height: 2),
              Container(
                width: 300,
                height: 100,
                margin: EdgeInsets.fromLTRB(11, 0, 0, 20),
                decoration: BoxDecoration(
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
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 13, // تغيير القطر حسب الحاجة
                            backgroundColor: const Color.fromARGB(
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
                      padding: const EdgeInsets.only(left: 26),
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
              ),
              SizedBox(height: 0),
              Container(
                width: 300,
                height: 100,
                margin: EdgeInsets.fromLTRB(11, 0, 0, 10), // Adjusted margin
                decoration: BoxDecoration(
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
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 26, top: 7),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 13, // تغيير القطر حسب الحاجة
                            backgroundColor: const Color.fromARGB(
                                255, 14, 13, 13), // تعيين اللون الخلفي المرغوب
                            child: Icon(
                              Icons
                                  .delivery_dining, // استبدال الأيقونة بأيقونة delivery_dining
                              size: 12, // تغيير حجم الايقونة حسب الحاجة
                              color: Colors.white, // تعيين اللون المرغوب
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Order Delivered',
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
                    SizedBox(height: 2),
                    Padding(
                      padding: const EdgeInsets.only(left: 26),
                      child: Text(
                        'Package from your order has arrived!',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCustomBackIcon {
  static IconData iconData = Icons.arrow_back_ios;
}
