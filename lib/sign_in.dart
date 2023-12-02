import 'package:flutter/material.dart';
import 'package:vietasy/sign_up.dart';

import 'bottom_bar.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Welcome!",
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              Image.asset(
                "assets/images/welcome.jpg",
                height: 250,
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 12),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    color: Colors.grey[100],
                    borderRadius:
                    const BorderRadius.all(Radius.circular(10))),
                child: const TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Your Email',
                      contentPadding: EdgeInsets.all(10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Password",
                style: TextStyle(fontSize: 12),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    color: Colors.grey[100],
                    borderRadius:
                    const BorderRadius.all(Radius.circular(10))),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Password',
                      contentPadding: EdgeInsets.all(10)),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (_) => const ForgotPassword()));
                  },
                  child: Text(
                    "Forgot Password ? ",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: Theme.of(context).primaryColor,
                height: 20,
                minWidth: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Theme.of(context).primaryColor)),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: (){
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomeWithBottomNav()),
                        (route) => false,
                  );
                },
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "don't have an account ? ",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SignUp()));
                    },
                    child: Text(
                      "Sign Up ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
