import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  // runApp(Text('hello world', textDirection: TextDirection.ltr),);

  // runApp(Center(child: Text('hello world', textDirection: TextDirection.ltr)));

  //  runApp(CupertinoApp());

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home page'),
          actions: [],
        ),
        body: Center(
          child: Column(
            children: [
              Text('Local image'),
              Icon(
                Icons.accessibility_new_sharp,
                fontWeight: FontWeight.bold,
                size: 50,
                color: Colors.blueAccent,
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(height: 2),
              ),

              Text('Network Image'),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png',
                width: 200,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),

          //  Text(
          //   'hello world',
          //   textDirection: TextDirection.ltr,
          //   style: TextStyle(
          //     fontSize: 25,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
        ),
      ),
    ),
  );
}
