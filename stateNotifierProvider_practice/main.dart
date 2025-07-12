import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/screens/home_screen.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "StateNotifier Counter",
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
