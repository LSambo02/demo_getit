import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  IconData thumbnail;
  String produto;

  void Function() action;

  CustomCard(
      {@required this.thumbnail,
      @required this.produto,
      @required this.action});

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Card(
      child: FlatButton(
        child: ListTile(
          leading: Icon(widget.thumbnail),
          title: Text(widget.produto),
        ),
        onPressed: widget.action,
      ),
    ));
  }
}
