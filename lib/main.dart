import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final List<String> entryList = <String>['A', 'B', 'C'];
  final List<int> colorList = <int>[600, 400, 100];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('410637085 林奕成-3'),
        ),
        body: ListView.separated(
          // scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(50),
          itemCount: entryList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorList[index]],
              child: Center(child: Text('Entry ${entryList[index]}')),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 50,
              thickness: 5,
              indent: 1,
              color: Colors.black45,
            );
          },
        ),
      ),
    );
  }
}