import 'package:flutter/material.dart';
import 'package:flutter_medical/widget/my_header.dart';

class ContactWithUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تواصل معنا'),
        actions: [],
      ),
      body: Column(
        children: <Widget>[
          MyHeader(
            height: 280,
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
          Expanded(
              child: SingleChildScrollView(
            child: ListView(
              children: [
                Card(
                  shadowColor: Colors.red,
                  child: ListTile(
                    title: Text('للتواصل اضغط على الايقونة'),
                  ),
                ),
                Card(
                  shadowColor: Colors.red,
                  child: ListTile(
                    title: Text('هاتف اسيا'),
                    subtitle: Text('07735715000'),
                  ),
                ),
                Card(
                  shadowColor: Colors.red,
                  child: ListTile(
                    title: Text('هاتف زين'),
                    subtitle: Text('07735715000'),
                  ),
                ),
                Card(
                  shadowColor: Colors.red,
                  child: ListTile(
                    title: Text('انستغرام'),
                    subtitle: Text('clinic_brith'),
                    leading:
                        Image.asset('assets/images/social_media_icon (3).png'),
                  ),
                ),
                Card(
                  shadowColor: Colors.red,
                  child: ListTile(
                    title: Text('انستغرام'),
                    subtitle: Text('clinic_brith'),
                    leading:
                        Image.asset('assets/images/social_media_icon (3).png'),
                  ),
                ),
              ],
            ),
          ))
          // new Expanded(
          //   child: GridView.count(
          //     padding: EdgeInsets.all(10),
          //     mainAxisSpacing: 10,
          //     crossAxisSpacing: 30,
          //     crossAxisCount: 3,
          //     children: [
          //       Card(
          //         child: Image.asset('assets/images/social_media_icon (1).png'),
          //       ),
          //       Card(
          //         child: Image.asset('assets/images/social_media_icon (2).png'),
          //       ),
          //       Card(
          //         child: Image.asset('assets/images/social_media_icon (3).png'),
          //       ),
          //       Card(
          //         child: Image.asset('assets/images/social_media_icon (4).png'),
          //       ),
          //     ],
          //   ),
          // ),
          // Card(
          //   child: Text("this is text"),
          // )
        ],
      ),
    );
  }
}
