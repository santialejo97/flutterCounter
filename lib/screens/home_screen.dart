import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int count = 0;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.plus_one),
        onPressed: () {
          count++;
        },
      ),
      backgroundColor: Colors.amber,
      appBar: AppBar(
        elevation: 10,
        title: const Text('HomeScreen'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Clicks Counter', style: fontSize30),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$count',
              style: fontSize30,
            ),
          ],
        ),
      ),
    );
  }
}
