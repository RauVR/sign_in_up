import 'package:flutter/material.dart';
import 'package:sign_in_up/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
        
        home: LoginPage(),
    );

  }

}


