import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
    enabled: !kReleaseMode,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WebView Tutorial',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
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
