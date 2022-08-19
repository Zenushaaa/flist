import 'package:flist/Pages/forgot_password_page.dart';
import 'package:flist/Pages/login_page.dart';
import 'package:flist/Pages/register_page.dart';
import 'package:flist/Pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Splashpage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/forgotPassword': (context) => const ForgotPasssword(),
      },
    );
  }
}
