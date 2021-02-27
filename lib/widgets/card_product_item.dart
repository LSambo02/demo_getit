import 'package:demo_getit/models/Produto.dart';
import 'package:flutter/material.dart';

class CardProductItem extends StatefulWidget {
  var width;
  Produto productItem;
  var removeClicker;
  bool isRemovable;

  CardProductItem(
      {this.width,
      this.productItem,
      this.removeClicker,
      this.isRemovable = true});

  @override
  _CardProductItemState createState() => _CardProductItemState();
}

class _CardProductItemState extends State<CardProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: widget.width / 1.17,
              child: Container(
                width: 180,
                margin: EdgeInsets.only(left: 16, top: 10, right: 0),
                padding: EdgeInsets.only(right: 0),
                child: Text(
                  '${widget.productItem.item} |Price: ${widget.productItem.price} |Qnt: ${widget.productItem.qntd}',
                  // maxLines: 3,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black),
                ),
              )
              // singleDetailWidget(
              //     'Item', widget.productItem.offering.toString() ?? '',
              //     width: widget.width, fontSize: 16.0),
              ),
          widget.isRemovable
              ? Container(
                  // width: widget._whidth / 0.8,
                  child: IconButton(
                    onPressed: widget.removeClicker,
                    icon: Icon(Icons.remove_circle_outline_rounded,
                        color: Colors.red[800]),
                  ),
                )
              : SizedBox()
        ],
      ),
    );
  }
}
