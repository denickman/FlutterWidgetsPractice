import 'package:flutter/material.dart';
import 'package:widgets/profile_page.dart';

void main() {
  // runApp(Text('hello world', textDirection: TextDirection.ltr),);
  // runApp(Center(child: Text('hello world', textDirection: TextDirection.ltr)));
  //  runApp(CupertinoApp());

  Widget networkImageSection() {
    return Stack(
      children: [
        Container(
          color: Colors.blue.shade600,
          width: double.infinity,
          height: 260,
        ), // фон
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://cdn.pixabay.com/photo/2018/08/04/11/30/draw-3583548_1280.png',
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          'Network Image',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Text('Cucumber Style', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }

  Widget simplePractiseWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text('Center', style: TextStyle(color: Colors.white)),
              ),
            ),

            Align(alignment: Alignment.bottomLeft, child: Text('Local image')),
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

            networkImageSection(),

            IconTheme(
              data: IconThemeData(color: Colors.white, size: 30),
              child: Container(
                height: 50,
                color: Colors.black,
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
    );
  }

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

        ProfileAssignment(),


        //  Column(
        //   children: [
        //     // simplePractiseWidget(),
        //     ProfileAssignment(),
        //   ],
        // ),

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