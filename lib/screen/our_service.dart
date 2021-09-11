import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/our_service.dart';
import 'package:flutter_medical/screen/reserve/reserve_screen.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class OurService extends StatelessWidget {
  final List _servicesList = [
    "تنظيف الاسنان",
    "قلع الاسنان",
    "حشوات الاسنان",
    "التقويم",
    "زرع الاسنان",
    "قص اللثة ",
    "تغليف الاسنان",
    "ابتسامة هوليوود",
    "شذرات للاسنان",
    "التقويم",
    "زرع الاسنان",
    "قص اللثة ",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 333,
            imageUrl: 'assets/images/welcome.png',
            child: Column(
              children: <Widget>[
                HeaderLogo(),
                Text(
                  'خدماتنا',
                  style: TextStyle(
                    fontSize: 28,
                    color: mTitleTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'ستجد هنا جميع الخدمات التي يقدمها مركز برايت',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 36,
                ),
                SizedBox(
                  height: 24,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    children: [Text("data")],
                  ),
                )
              ],
            ),
          ),
          new Expanded(
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this would produce 2 rows.
              crossAxisCount: 3,
              // Generate 100 Widgets that display their index in the List
              children: List.generate(12, (index) {
                return GestureDetector(
                  onTap: () {
                    print("${index + 1}");
                  },
                  child: Column(
                    children: [
                      Card(
                        child: Image.asset('assets/images/(${index + 1}).png'),
                      ),
                      Text(
                          '${index > _servicesList.length ? index : _servicesList[index]}')
                    ],
                  ),
                );
              }),
            ),
          ),
          // Card(
          //   child: Text("this is text"),
          // )
        ],
      ),
    );
  }
}
