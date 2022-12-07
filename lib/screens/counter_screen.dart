import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void increase() {
    count++;
    setState(() {});
  }

  void reset() {
    count = 0;
    setState(() {});
  }

  void remove() {
    if (count <= 0) {
      count = 0;
    } else {
      count--;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: CustomFloatingActions(
        incresedFn: increase,
        removeFn: remove,
        reset: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function incresedFn;
  final Function removeFn;
  final Function reset;

  const CustomFloatingActions({
    Key? key,
    required this.incresedFn,
    required this.removeFn,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () => incresedFn()),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          child: const Icon(Icons.refresh_rounded),
          onPressed: () => reset(),
        ),
        const SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => removeFn(),
        ),
      ],
    );
  }
}
