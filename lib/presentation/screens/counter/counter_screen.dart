import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  static String name = 'CounterScreen'; 
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
      ),
      body: Center(
        child: Text(
          'Counter Screen',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.white,),
        onPressed: (){},
        backgroundColor: colors.primary,
      ),
    );
  }
}