import 'package:flutter/material.dart';
import 'package:idemart/screen/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ide Mart',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: WelcomeScreen()
      // home: LoginScreen(),
      home: RegisterScreen(),
    );
  }
}
