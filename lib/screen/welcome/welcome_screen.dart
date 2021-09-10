import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/reserve/reserve_screen.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class WelcomeScreen extends StatelessWidget {
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
                  'مرحبا بكم',
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
                  'يمكنك الان معرفة مواعيد الاطباء و اوقات تواجدهم',
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
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [mBackgroundColor, mSecondBackgroundColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'قائمة المحتويات',
                            style: TextStyle(
                              color: mTitleTextColor,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.menu,
                            color: mSecondBackgroundColor,
                            size: 36,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SingleChildScrollView(
                      child: GridView.count(
                        crossAxisCount: 3,
                        children: [
                          MenuCard(
                            imageUrl: 'assets/images/our_service.png',
                            title: 'خدماتنا',
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ReserveScreen();
                                  },
                                ),
                              );
                            },
                          ),
                          MenuCard(
                            imageUrl: 'assets/images/about_us.png',
                            title: 'من نحن',
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          MenuCard(
                            imageUrl: 'assets/images/contact_us.png',
                            title: 'اتصل بنا',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
