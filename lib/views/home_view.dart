import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvc/controllers/counter_controller.dart';
import 'package:provider_mvc/providers/counter_provider.dart';


class HomeView extends StatelessWidget {
  final CounterController _controller = CounterController();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Provider + MVC Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              '${Provider.of<CounterProvider>(context).count}',
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _controller.incrementCounter(context),
                  child: const Text("Increment"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _controller.decrementCounter(context),
                  child: const Text("Decrement"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
