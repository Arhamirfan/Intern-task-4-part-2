import 'package:flutter/material.dart';
import 'package:intern_task4_part2/expandedview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Intern task 4 part 2'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: expandBody(),
          ),
        ),
      ),
    );
  }
}

class expandBody extends StatefulWidget {
  @override
  _expandBodyState createState() => _expandBodyState();
}

class _expandBodyState extends State<expandBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          expandable_card(
              context, Colors.tealAccent, 'chalo bhai, shroo ho jao'),
          expandable_card(context, Colors.purple, 'hn bhai kasa dia'),
          expandable_card(context, Colors.yellow, 'wahh wahh waaahh'),
          expandable_card(context, Colors.deepOrange, ''),
          expandable_card(context, Colors.cyan, ''),
          expandable_card(context, Colors.blueAccent, ''),
        ],
      ),
    );
  }
}
// decoration: BoxDecoration(
// shape: BoxShape.rectangle,
// color: Colors.blue,
// borderRadius: BorderRadius.all(Radius.circular(20)))
//
// width: MediaQuery.of(context).size.width,
