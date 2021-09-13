import 'package:flutter/material.dart';
import 'package:flutter_medical/constant.dart';
import 'package:flutter_medical/model/doctor_calendar.dart';
import 'package:flutter_medical/screen/our_service.dart';
import 'package:flutter_medical/screen/reserve/reserve_screen.dart';
import 'package:flutter_medical/widget/header_logo.dart';
import 'package:flutter_medical/widget/menu_card.dart';
import 'package:flutter_medical/widget/my_header.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final DoctorCalendar _doctorCal =
      new DoctorCalendar('Dr.ayman', {'sunday': '2:30 - 8:30'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل الطبيب'),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
