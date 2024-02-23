import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Social icons"),
      ),
      body: Wrap(
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: SvgPicture.asset(
              'assets/icons/social/facebook.svg',
            ),
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: SvgPicture.asset(
              'assets/icons/social/instagram.svg',
            ),
          ),
          SizedBox(
            height: 80,
            width: 80,
            child: SvgPicture.asset(
              'assets/icons/social/whatsapp.svg',
            ),
          ),
        ],
      ),
    );
  }
}
