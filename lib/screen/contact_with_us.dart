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
      body: Container(
        color: Colors.grey.shade100,
        child: Column(
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
              child: Column(
                children: [
                  Card(
                    color: Colors.blue,
                    shadowColor: Colors.red,
                    child: ListTile(
                      title: Center(
                          child: Text(
                        'معلومات التواصل مع المركز',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.red,
                    child: ListTile(
                      title: Text('هاتف اسيا'),
                      subtitle: Text('07735715000'),
                      leading: Icon(
                        Icons.phone,
                        color: Colors.blue,
                        size: 40,
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.red,
                    child: ListTile(
                      title: Text('هاتف زين'),
                      subtitle: Text('07735715000'),
                      leading: Icon(
                        Icons.phone,
                        color: Colors.cyan,
                        size: 40,
                      ),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.red,
                    child: ListTile(
                      title: Text('انستغرام'),
                      subtitle: Text('clinic_brith'),
                      leading: Image.asset(
                          'assets/images/social_media_icon (3).png'),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.red,
                    child: ListTile(
                      title: Text('واتساب'),
                      subtitle: Text('07735715000'),
                      leading: Image.asset(
                          'assets/images/social_media_icon (1).png'),
                    ),
                  ),
                  Card(
                    shadowColor: Colors.red,
                    child: ListTile(
                      title: Text('فيسبوك'),
                      subtitle: Text('mambrightcenter'),
                      leading: Image.asset(
                          'assets/images/social_media_icon (2).png'),
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
      ),
    );
  }
}
