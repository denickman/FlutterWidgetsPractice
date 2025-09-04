import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('List View Example')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1 / 2,
        ),
        itemBuilder: (context, index) =>
            Card(child: Center(child: Text(items[index]))),
      ),
    );
  }
}
