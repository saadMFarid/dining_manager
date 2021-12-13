import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/launch.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LaunchPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
