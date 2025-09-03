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
          actions: [

          ],
        ),
        body: Center(
          child:
         // Image.network('src')

           Icon(
            Icons.accessibility_new_sharp,
            fontWeight: FontWeight.bold,
            size: 50,
            color: Colors.blueAccent,
           
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
