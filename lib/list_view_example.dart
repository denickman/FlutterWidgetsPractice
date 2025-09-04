import 'package:flutter/material.dart';

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(title: Text('List View Example')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) =>
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ListTile(
                tileColor: index.isEven ? Colors.grey : Colors.blue,
                title: Text(items[index]),
                subtitle: Text('this is a subtitle ${index + 1}'),
              )
              ),
      ),
    );
  }
}
