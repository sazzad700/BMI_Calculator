import 'package:flutter/material.dart';

import '../Screen/input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),

          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Color(0xFF0A0E21),


          ),

          textTheme: TextTheme(
              bodyMedium: TextStyle(

              )
          )
      ),
      home: Inputpage(),
    );
  }
}

