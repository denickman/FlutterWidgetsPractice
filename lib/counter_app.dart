import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter App')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count += 1;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You have pushed the button this many times:'),
            Text('$_count', style: TextStyle(fontSize: 50)),
          ],
        ),
      ),
    );
  }
}
