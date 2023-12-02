import 'package:flutter/material.dart';
import 'package:vietasy/sign_in.dart';
import 'package:vietasy/sign_up.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Profile"),
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/7cho.jpeg'),
            ),
            Text("B.O.A.T"),
            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => SignIn()),
                    (route) => false,
              );
            }, child: Text('Log out')
            ),
          ]
        ),
      ),
    );
  }
}
