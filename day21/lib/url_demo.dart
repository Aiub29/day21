import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlDemo extends StatefulWidget {
  const UrlDemo({Key? key}) : super(key: key);

  @override
  State<UrlDemo> createState() => _UrlDemoState();
}

class _UrlDemoState extends State<UrlDemo> {
  String _url = "https://www.prothomalo.com/";

  Future _urlLancher() async {
    if (!await launch(_url)) throw 'Could not open';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          _urlLancher();
        },
        child: Text('Prothom Alo'),
      )),
    );
  }
}
