import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

// import 'package:kids_learning/Component/appBar.dart';

import 'appBar.dart';

class AppWebView extends StatefulWidget {
  final String title;
  final String url;
  AppWebView({
    required this.title,
    required this.url,
  });

  @override
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  @override
  @override
  void initState() {
    // تشتغل مرة واحدة عند تشغيل الصفحة
    super.initState();
    if (Platform.isAndroid)
      WebView.platform = SurfaceAndroidWebView(); // تسرع النت
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 170, 110),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150))),
          title: Text(widget.title),
          // Text(
          //   'Attention/Hyperactivity',
          //   style: TextStyle(
          //     fontStyle: FontStyle.italic, fontSize: 30,
          //     //  shadows: [
          //     // Shadow(
          //     // offset: Offset(1.5, 1.5),
          //     color: Colors.white,

          //     //   blurRadius: 3,
          //     // )
          //     // ]
          //   ),
          // ),
          centerTitle: true,
          // actions: [
          //   //app icon
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.arrow_back_ios)
          //   )
          // ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: WebView(
            initialUrl: widget.url,
            javascriptMode:
                JavascriptMode.unrestricted, // يفعل لكبسات داخل الويب
          ),
        ));
  }
}
