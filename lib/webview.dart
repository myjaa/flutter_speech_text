import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class webView extends StatefulWidget {
  @override
  _webViewState createState() => _webViewState();
}

class _webViewState extends State<webView> {

//------------------DOWNLOADING------------------------------
//  void download()async {
//    WidgetsFlutterBinding.ensureInitialized();
//    await FlutterDownloader.initialize(
//        debug: true // optional: set false to disable printing logs to console
//    );
//
//    final taskId = await FlutterDownloader.enqueue(
//      url: 'your download link',
//      savedDir: 'the path of directory where you want to save downloaded files',
//      showNotification: true, // show download progress in status bar (for Android)
//      openFileFromNotification: true, // click on notification to open downloaded file (for Android)
//    );
//  }

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
