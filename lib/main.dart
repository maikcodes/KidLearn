import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_gamifacion/src/welcomeScreen.dart';
//import 'src/home/login/welcome_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "LearnKid",
      theme: ThemeData(primaryColor: Colors.white),
      home: const WelcomeScreen(),
    );
  }
}
