import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';

class HeaderLogo extends StatelessWidget {
  const HeaderLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Image.asset(
          //   'assets/images/bright_logo.png',
          //   width: 100,
          //   height: 100,
          // ),
          SizedBox(
            width: 12,
          ),
          Text(
            'عيادات برايت التخصصية',
            style: TextStyle(
                fontSize: 25,
                color: mTitleTextColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
