import 'package:flutter/material.dart';
import 'package:vietasy/bottom_bar.dart';
// import 'login_screen.dart'; // Màn hình đăng nhập
// import 'register_screen.dart'; // Màn hình đăng ký
import 'home.dart'; // Màn hình chính với bottom nav
import 'sign_up.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool _isLoggedIn = true; // Giả sử trạng thái đăng nhập

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _isLoggedIn ? HomeWithBottomNav() : SignUp(),
      routes: {
        // '/login': (context) => LoginScreen(),
        '/register': (context) => SignUp(),
        '/home': (context) => Home(),
      },
    );
  }
}
