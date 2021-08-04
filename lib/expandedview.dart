import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class expandable_card extends StatelessWidget {
  expandable_card(this.context, this.colour, this.txxt);

  final BuildContext context;
  final Color colour;
  final String txxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Card(
        color: colour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: ExpansionTile(
          title: Text(''),
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * .1,
              child: Text('$txxt'),
            )
          ],
        ),
      ),
    );
  }
}
