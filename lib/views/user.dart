import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Userpage extends StatefulWidget {
  const Userpage({ Key? key }) : super(key: key);

  @override
  _UserpageState createState() => _UserpageState();
}

class _UserpageState extends State<Userpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("User Profile"),
      ),
    );
  }
}