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
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Home page',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          actions: [],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Local image'),
              Icon(
                Icons.accessibility_new_sharp,
                fontWeight: FontWeight.bold,
                size: 50,
                color: Colors.blueAccent,
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(height: 2),
              ),

              Text('Network Image'),
              Image.network(
                'https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),

                  IconTheme(
                    data: IconThemeData(color: Colors.white, size: 30),
                    child: Container(
                      height: 100,
                      color: Colors.teal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.access_time_rounded),
                          Icon(Icons.share_arrival_time_outlined),
                          Icon(Icons.dashboard_customize),
                        ],
                      ),
                    ),
                  ),


              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(height: 2),
              ),

              Text(
                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        //  Text(
        //   'hello world',
        //   textDirection: TextDirection.ltr,
        //   style: TextStyle(
        //     fontSize: 25,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // ),
      ),
    ),
  );
}



/*


MainAxisAlignment.start → все элементы прижаты к верху.
MainAxisAlignment.end → все элементы прижаты к низу.
MainAxisAlignment.center → элементы собраны по центру.
MainAxisAlignment.spaceBetween → первый элемент вверху, последний внизу, остальные равномерно распределены между ними без отступов сверху/снизу.
MainAxisAlignment.spaceAround → между элементами равные промежутки, и половина этих промежутков добавляется сверху и снизу.
MainAxisAlignment.spaceEvenly → все промежутки (между элементами, сверху и снизу) одинаковые.


*/