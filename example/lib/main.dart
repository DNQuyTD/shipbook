import 'package:flutter/material.dart';
import 'package:shipbook/shipbook.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    Shipbook.start(
        '6479a224f8f2874bd8c7984fl', '129e6bb130dc4104bc1f43daa41276ac6');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Log.i('tag', 'message');
            },
            child: const Text('Log'),
          ),
        ),
      ),
    );
  }
}
