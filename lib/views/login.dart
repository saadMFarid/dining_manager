import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 250,
                      child: Image.asset("assets/images/dining.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40,
                      ),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(
                        left: 40,
                      ),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Please sign-in to continue",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 40
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: "Enter your email"
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 20,
                        bottom: 40
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: "Enter your password"
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                      },
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.blueGrey
                          ),
                          children: [
                            TextSpan(
                              text: "Don't have an account"
                            ),
                            TextSpan(
                              text: "?",
                              style: TextStyle(
                                color: Colors.red
                              ),
                            ),
                            TextSpan(
                              text: "Register",
                              style: TextStyle(
                                color: Colors.lightGreen
                              )
                            )
                          ]
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}