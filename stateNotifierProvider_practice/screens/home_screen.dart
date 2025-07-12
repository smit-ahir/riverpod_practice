import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_tutorial/providers/counter_provider.dart';

class CounterScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider); // current state
    final counter = ref.read(counterProvider.notifier); // logic

    return Scaffold(
      appBar: AppBar(title: Text("StateNotifier Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Count: $count", style: TextStyle(fontSize: 32)),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: counter.decrement,
                  child: Text("−", style: TextStyle(fontSize: 24)),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: counter.increment,
                  child: Text("+", style: TextStyle(fontSize: 24)),
                ),
              ],
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: counter.reset,
              child: Text("Reset"),
            )
          ],
        ),
      ),
    );
  }
}
