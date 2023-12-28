import 'package:flutfly_example_provider/first.dart';
import 'package:flutfly_example_provider/provider/number_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumberListProvider()),
      ],
      child: const MaterialApp(
        title: 'Provider Demo',
        home: FirstPage(),
      ),
    );
  }
}
