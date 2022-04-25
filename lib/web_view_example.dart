import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  final String path;
  WebViewExample(this.path);
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  String url = '';
  @override
  void initState() {
    url = widget.path;
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web URL: $url'),
        automaticallyImplyLeading: true,
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
