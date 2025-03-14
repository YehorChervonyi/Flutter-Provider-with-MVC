import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mvc/providers/counter_provider.dart';
import 'package:provider_mvc/views/home_view.dart';


void main() {
  runApp(registerProviders(MyApp()));
}

Widget registerProviders(Widget child) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterProvider()),
    ],
    child: child,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
