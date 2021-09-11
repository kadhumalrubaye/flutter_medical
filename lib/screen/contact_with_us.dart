import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/screen/our_service.dart';
import 'package:flutter_medical/screen/reserve/reserve_screen.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class ContactWithUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 333,
            imageUrl: 'assets/images/social_media_cover.png',
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 16,
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
              ],
            ),
          ),
          new Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                Card(
                  child: Image.asset('assets/images/social_media_icon (1).png'),
                )
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
