import 'package:flutter/material.dart';
import 'package:flutter_count/src/models/counter_model.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<CounterModel>(
              builder: (context, counterModel, child) =>
                  CountText(counter: counterModel.value),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => context.read<CounterModel>().increment(),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => context.read<CounterModel>().decrement(),
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () => context.read<CounterModel>().reset(),
                  child: const Icon(Icons.restore_rounded),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CountText extends StatelessWidget {
  const CountText({
    super.key,
    required this.counter,
  });

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.onTertiary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          '$counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
