import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child:Image.asset(
              "images/recycle.png",height: 300,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,
            )
            ),
          ],
        ),
      ),
    );
  }
}
