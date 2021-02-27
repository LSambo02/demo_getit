// part 'ProductListController.g.dart';
//
// class ProductListController = _ProductListControllerBase
//     with _$ProductListController;
//
// abstract class _ProductListControllerBase with Store {}

import 'package:demo_getit/models/Produto.dart';
import 'package:mobx/mobx.dart';

part 'product_list_controller.g.dart';

class ProductListController = _ProductListControllerbase
    with _$ProductListController;

abstract class _ProductListControllerbase with Store {
  @observable
  ObservableList products = [].asObservable();

  @action
  addProductItem(Produto productItem) {
    products.add(productItem);
  }

  @action
  removeLastProductItem() {
    products.removeLast();
  }

  @action
  removeProductItem(Produto productItem) {
    products.removeWhere((produto) => produto.item == productItem.item);
  }

  @action
  reset() {
    products.clear();
  }
}
