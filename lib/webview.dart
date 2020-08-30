import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webView extends StatefulWidget {
  @override
  _webViewState createState() => _webViewState();
}

class _webViewState extends State<webView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Speech to Text'),
          centerTitle: true,
        ),
        body:
//        Row(
//          children: <Widget>[
//            Text("Start Speaking"),
//          ],
//        ),
        Container(
          child: WebView(
              initialUrl: 'https://speech.eexm.in',
              javascriptMode: JavascriptMode.unrestricted
          ),
        ),
      );
  }
}
