import 'package:demo_getit/models/Produto.dart';
import 'package:demo_getit/screens/carinho.dart';
import 'package:demo_getit/services/product_list_controller.dart';
import 'package:demo_getit/utils/getit_sl.dart';
import 'package:demo_getit/widgets/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Produto> prods = [
    Produto.item('Maçã'),
    Produto.item('Banana'),
    Produto.item('Queijo'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lojinha'), actions: [
        Observer(
          builder: (_) => Stack(
            alignment: Alignment.bottomRight,
            children: [
              IconButton(
                icon: Icon(
                  Icons.receipt,
                  size: 30,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return Carinho(products: getIt<ProductListController>());
                  }));
                },
              ),
              getIt<ProductListController>().products.length != 0
                  ? Container(
                      margin: EdgeInsets.only(top: 24, right: 10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      width: 19,
                      child: Center(
                          child: Text(getIt<ProductListController>()
                              .products
                              .length
                              .toString())),
                    )
                  : SizedBox()
            ],
          ),
        )
      ]),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: prods.length,
            itemBuilder: (_, int index) {
              return CustomCard(
                  thumbnail: Icons.ac_unit,
                  produto: prods[index].item,
                  action: () {
                    getIt<ProductListController>()
                        .addProductItem(Produto(prods[index].item, 10, 1000));
                  });
            }),
      ),
    );
  }
}
