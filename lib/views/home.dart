import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/user.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dining Management"),
      ),
      body: Center(
        child: Text("null"),
      ),
      drawer: Drawer(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.green,
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      color: Colors.green,
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Dining",
                        style: TextStyle(color: Colors.red, fontSize: 50),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      color: Colors.green,
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Management",
                        style: TextStyle(color: Colors.red, fontSize: 50),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Userpage()));
                },
                child: ListTile(
                  leading: Icon(Icons.people),
                  title: Text("My Account"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.app_registration),
                title: Text("Registration"),
                trailing: Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
    );
  }
}
