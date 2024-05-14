import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

myAppBar({required BuildContext context}) {
  return AppBar(
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
          print("\tclicked\n\n");
          showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  title: Icon(Icons.delete_outline,
                      color: Color.fromARGB(255, 14, 13, 13)),
                  content:
                      Text("Are you sure you want to delete all notification?"),
                );
              });
          // Add any action you want to perform here when the icon is pressed
        },
        icon: const Icon(Icons.delete_outline,
            color: Color.fromARGB(255, 14, 13, 13)),
      ),
    ],
  );
}

class MyCustomBackIcon {
  static IconData iconData = Icons.arrow_back_ios;
}
