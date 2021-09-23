import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LocationMap extends StatefulWidget {
  @override
  LocationMapState createState() => LocationMapState();
}

class LocationMapState extends State<LocationMap> {
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('change me'),
      ),
      body: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: 'https://goo.gl/maps/V1P57fjMh7f6wfTs9'),
    );
  }
}
