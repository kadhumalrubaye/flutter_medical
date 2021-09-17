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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 250,
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
              children: [
                GestureDetector(
                  onTap: () {
                    print("kok");
                  },
                  child: Column(
                    children: [
                      Card(
                        child: Image.asset('assets/images/تقويم.png'),
                      ),
                      Text('تقويم')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("kok");
                  },
                  child: Column(
                    children: [
                      Card(
                        child: Image.asset('assets/images/تغليف.png'),
                      ),
                      Text('تغليف')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("kok");
                  },
                  child: Column(
                    children: [
                      Card(
                        child: Image.asset('assets/images/تنظيف.png'),
                      ),
                      Text('تنظيف')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("kok");
                  },
                  child: Column(
                    children: [
                      Card(
                        child: Image.asset('assets/images/حشوات.png'),
                      ),
                      Text('حشوات')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("kok");
                  },
                  child: Column(
                    children: [
                      Card(
                        child: Image.asset('assets/images/زرع.png'),
                      ),
                      Text('زرع')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("kok");
                  },
                  child: Column(
                    children: [
                      Card(
                        child: Image.asset('assets/images/هوليوود.png'),
                      ),
                      Text('ابتسامة هوليوود')
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("kok");
                  },
                  child: Column(
                    children: [
                      Card(
                        color: Colors.red,
                        child: Image.asset('assets/images/قلع.png'),
                      ),
                      Text('قلع')
                    ],
                  ),
                ),
              ],
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
