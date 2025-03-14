import 'package:provider/provider.dart';
import 'package:provider_mvc/providers/counter_provider.dart';

class CounterController {
  void incrementCounter(context) {
    Provider.of<CounterProvider>(context, listen: false).increment();
  }

  void decrementCounter(context) {
    Provider.of<CounterProvider>(context, listen: false).decrement();
  }
}