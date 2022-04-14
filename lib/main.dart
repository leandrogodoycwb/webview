import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Tutorial',
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 30.0),
          child: WebView(
            initialUrl:
                'https://servicos.santamonica.rec.br/homologacao/usuarioc/login',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
