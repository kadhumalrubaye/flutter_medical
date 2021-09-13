import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/model/doctor_calendar.dart';
import 'package:flutter_medical/screen/doctor_details.dart';
import 'package:flutter_medical/screen/our_service.dart';
import 'package:flutter_medical/screen/reserve/reserve_screen.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class DoctorList extends StatelessWidget {
  final DoctorCalendar _doctorCal =
      new DoctorCalendar('Dr.ayman', {'sunday': '2:30 - 8:30'});

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
                  'قائمة الاطباء',
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
                  'صفحة قائمة الاطباء',
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
          Expanded(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DoctorDetailsScreen()));
                  },
                  child: ListTile(
                    title: Text("دكتور ايمن"),
                    subtitle: Text("متواجد"),
                    leading: Image.asset('assets/images/(1).png'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DoctorDetailsScreen()));
                  },
                  child: ListTile(
                    title: Text("دكتورة ملاذ"),
                    subtitle: Text("غير متواجد"),
                    leading: Image.asset('assets/images/(1).png'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DoctorDetailsScreen()));
                  },
                  child: ListTile(
                    title: Text("دكتور حمزة"),
                    subtitle: Text("متواجد"),
                    leading: Image.asset('assets/images/(1).png'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DoctorDetailsScreen()));
                  },
                  child: ListTile(
                    title: Text("دكتورة مودة"),
                    subtitle: Text("غير متواجد"),
                    leading: Image.asset('assets/images/(1).png'),
                  ),
                ),
              ],
            ),
          )
          // Card(
          //   child: Text("this is text"),
          // )
        ],
      ),
    );
  }
}
