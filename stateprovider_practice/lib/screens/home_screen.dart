import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/providers/name_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.watch se hum nameProvider ka value le rahe hain
    final name = ref.watch(nameProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Greeting App")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onChanged: (value) {
                ref.read(nameProvider.notifier).state = value;
              },
            ),
            SizedBox(height: 20,),
            Center(
              child: Text(
                name.isEmpty?"Please enter your name":"Hello $name 👋",
                style: TextStyle(fontSize: 24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
