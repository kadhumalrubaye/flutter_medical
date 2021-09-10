import 'package:flutter/material.dart';

class OurService extends StatelessWidget {
  const OurService({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Card(
          child: ListView(
            children: [
              ListTile(
                title: Text("رقم الهاتف"),
                subtitle: Text("07735715000"),
              ),
              // ListTile(),
            ],
          ),
        ),
      ),
    );
  }
}
