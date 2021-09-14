import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/model/choose_model.dart';
import 'package:flutter_medical/screen/reserve/widget/choose_date.dart';
import 'package:flutter_medical/screen/reserve/widget/choose_time_group.dart';
import 'package:flutter_medical/screen/reserve/widget/my_appbar.dart';
import 'package:flutter_medical/screen/reserve/widget/user_info.dart';
import 'package:flutter_medical/widget/my_header.dart';

class ReserveScreen extends StatelessWidget {
  final String doctor_name;

  const ReserveScreen({Key key, @required this.doctor_name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 258,
            imageUrl: 'assets/images/avatar_head.png',
            child: Column(
              children: <Widget>[
                MyAppbar(),
                SizedBox(
                  height: 16,
                ),
                UserInfo(
                  doctor_name: doctor_name,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ChooseSlot(),
                    SizedBox(
                      height: 32,
                    ),
                    ChooseTimeGroup(
                      title: 'صباحا',
                      list: [
                        ChooseModel('08.30 AM'),
                        // ChooseModel('09.30 AM', check: true),
                        ChooseModel('12.00 AM'),
                      ],
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    ChooseTimeGroup(
                      title: 'مساءا',
                      list: [
                        ChooseModel('02.00 PM'),
                        ChooseModel('08.30 PM'),
                      ],
                    ),
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

class ChooseSlot extends StatelessWidget {
  const ChooseSlot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'اوقات التواجد',
          style: TextStyle(
            color: mTitleTextColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ChooseDate(
              week: 'Mon',
              date: '26',
            ),
            ChooseDate(
              week: 'Tue',
              date: '27',
              check: true,
            ),
            ChooseDate(
              week: 'Wed',
              date: '28',
            ),
            ChooseDate(
              week: 'Thu',
              date: '29',
            ),
            ChooseDate(
              week: 'Fri',
              date: '30',
            ),
            ChooseDate(
              week: 'Sat',
              date: '31',
            ),
          ],
        )
      ],
    );
  }
}
