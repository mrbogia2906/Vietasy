import 'package:flutter/material.dart';
import 'package:vietasy/bottom_bar.dart';
import 'package:vietasy/sign_in.dart';
// import 'login_screen.dart'; // Màn hình đăng nhập
// import 'register_screen.dart'; // Màn hình đăng ký
import 'home.dart'; // Màn hình chính với bottom nav
import 'sign_up.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _isLoggedIn = false; // Giả sử trạng thái đăng nhập

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vietasty',
      theme: ThemeData(
        fontFamily: "Roboto",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: _isLoggedIn ? HomeWithBottomNav() : SignIn(),
      routes: {
        // '/login': (context) => LoginScreen(),
        '/signin': (context) => SignIn(),
        '/signup': (context) => SignUp(),
        '/home': (context) => Home(),
      },
    );
  }
}
