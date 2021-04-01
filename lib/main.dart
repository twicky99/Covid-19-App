import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(MyApp(
    
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title:Text('Covid-19 App'),
              backgroundColor: Colors.deepPurple,
            ),
            body : Container(
              child:WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: 'https://www.bing.com/covid/local/srilanka?form=C19ANS',
              )
            )
          ),
      )
    );
  }
}