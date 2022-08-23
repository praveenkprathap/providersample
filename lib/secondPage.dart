import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  static const String page = "second";
  String? val;
  SecondPage({Key? key, this.val = ""}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("second")),
        body: Column(children: [Text(widget.val ?? "")]),
      ),
    );
  }
}
