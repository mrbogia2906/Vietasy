import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 120,
              alignment: Alignment.center,
              child: Text('Hi there!', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold))),
          Container(
            height: 220,
            decoration: BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/images/welcome.jpg"
                ),
              ),
            ),
          ),
          // Image.asset("assets/image/welcome.jpg"),
          // Image.asset('assets/image/welcome.png'),
          TextField(decoration: InputDecoration(labelText: 'Username')),
          TextField(decoration: InputDecoration(labelText: 'Email')),
          TextField(decoration: InputDecoration(labelText: 'Password')),
        ],
      ),
    );
  }
}
