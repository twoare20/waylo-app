import 'package:flutter/material.dart';
import 'package:waylo/screens/home_screen.dart';

void main() {
  runApp(const WayloApp());
}

class WayloApp extends StatelessWidget {
  const WayloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WAYLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
