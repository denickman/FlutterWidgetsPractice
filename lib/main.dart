import 'package:flutter/material.dart';
import 'package:widgets/menu_page.dart';
import 'package:widgets/profile_page.dart';
import 'package:widgets/list_view_example.dart';
import 'package:widgets/grid_view_example.dart';
import 'package:widgets/mixed_view_example.dart';
import 'package:widgets/menu_page.dart';
import 'package:widgets/counter_app.dart';
import 'package:widgets/home_page.dart';
import 'package:widgets/input_widget.dart';

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
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SimpleWidget()),
                  );
                },
                child: Text('Open Simple Widget'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileAssignment(),
                    ),
                  );
                },
                child: Text('Open Profile Assignment'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListViewExample()),
                  );
                },
                child: Text('Open List View Example'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GridViewExample()),
                  );
                },
                child: Text('Open Grid View Example'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuPage()),
                  );
                },
                child: Text('Open Menu Page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CounterApp()),
                  );
                },
                child: Text('Open Counter App'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Text('Open Home Page'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InputWidget()),
                  );
                },
                child: Text('Open Input Widget'),
              ),
            ],
          ),
        ),
      ),
    );
  }
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
