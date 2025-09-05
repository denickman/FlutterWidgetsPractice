import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  @override
  State<InputWidget> createState() {
    return _InputWidgetState();
  }
}

class _InputWidgetState extends State<InputWidget> {
  final _nameController = TextEditingController();
  final countries = ["Ukroine", 'Australia', 'UK', 'USA', 'Canada', 'Denmark'];
  String? country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input widgets')),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter your name',
                label: Text('Enter your name'),
              ),
              onChanged: (value) {
                print('text changed: $value');
              },
            ),

            ElevatedButton(
              onPressed: () {
                print(_nameController.text);
              },
              child: Text('Ok'),
            ),

            Divider(height: 2, thickness: 2),

            DropdownButton<String>(
              isExpanded: true,
              hint: Text('Select your country'),
              value: country,
              items: countries.map(
                (country) => DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                  )
                ).toList(),
               onChanged: (value) {
                    setState(() {
                      country = value;
                    });
              }),
          ],
        ),
      ),
    );
  }
}
