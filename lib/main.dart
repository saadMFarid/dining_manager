import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/launch.dart';
import 'package:flutter_application_1/views/login.dart';
import 'package:flutter_application_1/views/register.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LaunchPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
