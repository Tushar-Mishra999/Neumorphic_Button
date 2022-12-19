import 'package:flutter/material.dart';
import 'package:neumorphic_button/neumorphic_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
          child: NeumorphicButton(
        onTap: () {},
        borderRadius: 12,
        bottomRightShadowBlurRadius: 15,
        bottomRightShadowSpreadRadius: 1,
        borderWidth: 5,
        backgroundColor: Colors.grey.shade300,
        topLeftShadowBlurRadius: 15,
        topLeftShadowSpreadRadius: 1,
        topLeftShadowColor: Colors.white,
        bottomRightShadowColor: Colors.grey.shade500,
        height: size.width * 0.5,
        width: size.width * 0.5,
        padding: const EdgeInsets.all(50),
        bottomRightOffset: const Offset(4, 4),
        topLeftOffset: const Offset(-4, -4),
        child: const Center(child: Text("Hello World")),
      )),
    );
  }
}
