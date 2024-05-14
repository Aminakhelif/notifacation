import 'package:flutter/material.dart';
import 'package:notification/main.dart';

class MyDialog extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final int index;

  const MyDialog({
    super.key,
    required this.color,
    required this.backgroundColor,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Center(
        child: SizedBox(
          height: 175,
          width: 250,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: color,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: const Text(
                            'Are you sure you want to delete this notification?'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('cancel'),
                            style: TextButton.styleFrom(
                              foregroundColor:
                                  Color.fromARGB(255, 37, 37, 37), // Text color
                              backgroundColor: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              notifications.removeAt(index);
                              Navigator.of(context).pop();
                            },
                            child: const Text('yes'),
                            style: TextButton.styleFrom(
                              foregroundColor: Color.fromARGB(
                                  255, 123, 196, 123), // Text color
                              backgroundColor: Colors.white, // Background color
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Align(
                  alignment: const Alignment(0, -1.50),
                  child: Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                          color: backgroundColor, shape: BoxShape.circle),
                      child: Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                              color: color, shape: BoxShape.circle),
                          child: const Icon(Icons.delete_outline,
                              color: Color.fromARGB(255, 14, 13, 13)),
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
