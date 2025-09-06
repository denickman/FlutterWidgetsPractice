import 'package:flutter/material.dart';
import 'package:widgets/menu_page.dart';
import 'package:widgets/profile_page.dart';
import 'package:widgets/list_view_example.dart';
import 'package:widgets/grid_view_example.dart';
import 'package:widgets/mixed_view_example.dart';
import 'package:widgets/counter_app.dart';
import 'package:widgets/home_page.dart';
import 'package:widgets/input_widget.dart';
import 'package:widgets/assignment/todo_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  final _pages = [
    {'title': 'Open Simple Widget', 'widget': SimpleWidget()},
    {'title': 'Open Profile Assignment', 'widget': ProfileAssignment()},
    {'title': 'Open List View Example', 'widget': ListViewExample()},
    {'title': 'Open Grid View Example', 'widget': GridViewExample()},
    {'title': 'Open Menu Page', 'widget': MenuPage()},
    {'title': 'Open Counter App', 'widget': CounterApp()},
    {'title': 'Open Home Page', 'widget': HomePage()},
    {'title': 'Open Input Widget', 'widget': InputWidget()},
     {'title': 'Todo Flow', 'widget': TodoPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'Home Page',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: _pages.map((page) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => page['widget'] as Widget),
                    );
                  },
                  child: Text(page['title'] as String),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
