import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Open Phone Dialer"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () async {
                      String phoneNumber = "123456789";
                      final Uri launchUri = Uri(
                        scheme: 'tel',
                        path: phoneNumber,
                      );
                      await launchUrl(launchUri);
                    },
                    child: Text("Call Us Now"))
              ],
            )));
  }
}
