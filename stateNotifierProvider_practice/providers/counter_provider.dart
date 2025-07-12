import 'package:flutter_riverpod/flutter_riverpod.dart';


final counterProvider =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());


// This is your state management logic class
class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0); // initial value

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}


// 🧠 What You Learned:
// Concept	Explanation
// StateNotifier<T>	Custom class for state + logic
// .state	Current value
// .state = newValue	Update value
// ref.watch(provider)	UI ko listen karwana
// ref.read(provider.notifier)	Logic methods call karne ke liye
