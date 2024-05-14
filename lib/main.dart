import 'package:flutter/material.dart';
import 'package:notification/components/earlier_widget.dart';
import 'package:notification/components/my_appbar.dart';
import 'package:notification/components/note1.dart';
import 'package:notification/components/note2.dart';
import 'package:notification/components/note3.dart';
import 'package:notification/components/note4.dart';
import 'package:notification/components/recent_widget.dart';
import 'package:notification/components/top_widget.dart';
import 'package:notification/my_dialog.dart';

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
        appBar: myAppBar(context: context),
        body: HomeScreenBody(right: right),
      ),
    );
  }
}

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
    required this.right,
  });

  final double right;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: right),
        child: Column(
          children: [
            const TopWidget(),
            Expanded(
              child: ListView.separated(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return notifications[index];
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 5,
                  );
                },
              ),
            ),
          ],
        ));
  }
}

List<Widget> notifications = [
  const RecentWdget(),
  const Note1(),
  const Note2(),
  const EarlierWidget(),
  const Note3(),
  const Note4(),
];







class MyCustomBackIcon {
  static IconData iconData = Icons.arrow_back_ios;
}
