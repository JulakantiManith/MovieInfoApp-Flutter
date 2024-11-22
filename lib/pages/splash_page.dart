import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class SplashPage extends StatefulWidget {
//   final VoidCallback onInitializationComplete;

//   const SplashPage({
//     Key ?key,
//     required this.onInitializationComplete,
//   }) : super(key: key);

//   @override
//   State<StatefulWidget> createState() {
//     return _SplashPageState();
//   }
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   Widget build(BuildContext context) {
//     return null;
//   }
// }

class SplashPage extends StatefulWidget {
  final VoidCallback onInitializationComplete;
  const SplashPage({super.key, required this.onInitializationComplete});

  @override
  State<SplashPage> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReelX',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage('assets/images/logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
