import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_medical/model/doctor_calendar.dart';

class DoctorDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DoctorCalendar _doctorCal = new DoctorCalendar(
      'Dr.ayman',
      {
        'Sunday': '2:30 - 8:30',
        'Monday': '2:30 - 8:30',
        'Tuesday': '2:30 - 8:30',
        'Wednesday': '2:30 - 8:30',
        'Thursday': '2:30 - 8:30',
        'Friday': '2:30 - 8:30',
        'Saturday': '2:30 - 8:30',
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('تفاصيل الطبيب'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Card(
                  child: ListTile(
                    title: Text(_doctorCal.doctor_name),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('اوقات التواجد'),
                    subtitle: Text(_doctorCal.availabel_week['Sunday']),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: CalendarTimeline(
              initialDate: DateTime(2020, 4, 20),
              firstDate: DateTime(2019, 1, 15),
              lastDate: DateTime(2020, 11, 20),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: Colors.blueGrey,
              dayColor: Colors.teal[200],
              activeDayColor: Colors.white,
              activeBackgroundDayColor: Colors.redAccent[100],
              dotsColor: Color(0xFF333A47),
              selectableDayPredicate: (date) => date.day != 23,
              locale: 'en_ISO',
            ),
          )
        ],
      ),
    );
  }
}
