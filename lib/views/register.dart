import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:flutter_application_1/views/login.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Column(
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 80,
                      child: CircleAvatar(
                        backgroundColor: Colors.greenAccent,
                        radius: 75,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/avater.jpg"),
                          radius: 70,
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 10
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Name",
                          hintText: "Enter your name"
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 10
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Institute",
                          hintText: "Enter your institute  name"
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 10
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Department",
                          hintText: "Enter your department name"
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 10
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Phone",
                          hintText: "Enter your phone number"
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 10
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "photo",
                          hintText: "choose your photo"
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 10
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
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
                        top: 10
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Password",
                          hintText: "Enter your password"
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        left: 40,
                        right: 40,
                        top: 10,
                        bottom: 40
                      ),
                      child: TextFormField(
                        decoration:const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Confirm password",
                          hintText: "Confirm your password"
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
                          "Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:const EdgeInsets.only(
                        top: 40,
                        bottom: 50
                      ),
                      child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) =>const LoginPage()));
                      },
                      child: RichText(
                        text:const TextSpan(
                          style: TextStyle(
                            color: Colors.blueGrey
                          ),
                          children: [
                            TextSpan(
                              text: "Already have an account"
                            ),
                            TextSpan(
                              text: "?",
                              style: TextStyle(
                                color: Colors.red
                              ),
                            ),
                            TextSpan(
                              text: "Login",
                              style: TextStyle(
                                color: Colors.lightGreen
                              )
                            )
                          ]
                        ),
                      ),
                    ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}