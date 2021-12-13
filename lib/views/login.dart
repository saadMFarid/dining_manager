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
                      padding:const EdgeInsets.only(
                        left: 40,
                      ),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child:const Text(
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
                      padding:const EdgeInsets.only(
                        left: 40,
                      ),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Please sign-in to continue",
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 40
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Email",
                          hintText: "Enter your email"
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 20,
                        bottom: 40
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: "Enter your password"
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>const HomePage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child:const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>const RegisterPage()));
                      },
                      child: RichText(
                        text:const TextSpan(
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