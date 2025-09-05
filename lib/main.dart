import 'package:flutter/material.dart';
import 'package:widgets/menu_page.dart';
import 'package:widgets/profile_page.dart';
import 'package:widgets/list_view_example.dart';
import 'package:widgets/grid_view_example.dart';
import 'package:widgets/mixed_view_example.dart';
import 'package:widgets/menu_page.dart';
import 'package:widgets/counter_app.dart';
import 'package:widgets/home_page.dart';

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

        body:
        // SingleChildScrollView(
        //   child: 
           // simplePractiseWidget(),
            // ProfileAssignment(),
            // simplePractiseWidget(),
            // ListViewExample(),
            // GridViewExample(),
            //MenuPage(),
            //CounterApp(),
           HomePage()
        // )
           
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


Stack(
  clipBehavior: Clip.hardEdge, // по умолчанию
  children: [...],
)
clipBehavior может быть:
Clip.none — не обрезать. Всё, что выходит за границы Stack, будет видно.
Clip.hardEdge — обрезать строго по границе Stack. Всё, что выходит за границы, не отображается.
Clip.antiAlias — обрезка с сглаживанием краёв (антиалиасинг).
Clip.antiAliasWithSaveLayer — как antiAlias, но создаёт отдельный слой (дороже по производительности).

*/
