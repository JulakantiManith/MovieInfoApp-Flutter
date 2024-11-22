import 'package:flutter/material.dart';
import 'package:reel_x/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SplashPage(
      key: UniqueKey(),
      onInitializationComplete: () => null,
    );
  }
}