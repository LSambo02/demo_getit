import 'package:demo_getit/models/Produto.dart';
import 'package:demo_getit/services/product_list_controller.dart';
import 'package:demo_getit/widgets/card_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

class Carinho extends StatefulWidget {
  ProductListController products;
  var removeClicked;

  Carinho({this.products, this.removeClicked});

  @override
  _CarinhoState createState() => _CarinhoState();
}

class _CarinhoState extends State<Carinho> {
  Widget build(BuildContext context) {
    ObservableList _products = widget.products.products;
    var _width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('Produtos adicionados'),
          // actions: [registerClaimButtonNavigator(context)],
        ),
        body: Observer(builder: (_) {
          return ListView.separated(
            itemBuilder: (context, index) {
              Produto productItem = _products[index];
              print(productItem.toString());
              return CardProductItem(
                width: _width,
                productItem: productItem,
                removeClicker: () {
                  setState(() {
                    widget.products.removeProductItem(productItem);
                  });
                },
              );
            },
            itemCount: _products.length,
            separatorBuilder: (BuildContext context, int index) => Divider(),
          );
        }));
  }
}
