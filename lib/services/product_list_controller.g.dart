// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_list_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductListController on _ProductListControllerbase, Store {
  final _$productsAtom = Atom(name: '_ProductListControllerbase.products');

  @override
  ObservableList<dynamic> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<dynamic> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_ProductListControllerbaseActionController =
      ActionController(name: '_ProductListControllerbase');

  @override
  dynamic addProductItem(Produto productItem) {
    final _$actionInfo = _$_ProductListControllerbaseActionController
        .startAction(name: '_ProductListControllerbase.addProductItem');
    try {
      return super.addProductItem(productItem);
    } finally {
      _$_ProductListControllerbaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeLastProductItem() {
    final _$actionInfo = _$_ProductListControllerbaseActionController
        .startAction(name: '_ProductListControllerbase.removeLastProductItem');
    try {
      return super.removeLastProductItem();
    } finally {
      _$_ProductListControllerbaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeProductItem(Produto productItem) {
    final _$actionInfo = _$_ProductListControllerbaseActionController
        .startAction(name: '_ProductListControllerbase.removeProductItem');
    try {
      return super.removeProductItem(productItem);
    } finally {
      _$_ProductListControllerbaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reset() {
    final _$actionInfo = _$_ProductListControllerbaseActionController
        .startAction(name: '_ProductListControllerbase.reset');
    try {
      return super.reset();
    } finally {
      _$_ProductListControllerbaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
products: ${products}
    ''';
  }
}
