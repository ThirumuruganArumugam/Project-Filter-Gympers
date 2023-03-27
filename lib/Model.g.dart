// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FilterModel on _FilterModelBase, Store {
  late final _$brandCollectionAtom =
      Atom(name: '_FilterModelBase.brandCollection', context: context);

  @override
  List<String> get brandCollection {
    _$brandCollectionAtom.reportRead();
    return super.brandCollection;
  }

  @override
  set brandCollection(List<String> value) {
    _$brandCollectionAtom.reportWrite(value, super.brandCollection, () {
      super.brandCollection = value;
    });
  }

  late final _$productCollectionAtom =
      Atom(name: '_FilterModelBase.productCollection', context: context);

  @override
  List<Map<String, dynamic>> get productCollection {
    _$productCollectionAtom.reportRead();
    return super.productCollection;
  }

  @override
  set productCollection(List<Map<String, dynamic>> value) {
    _$productCollectionAtom.reportWrite(value, super.productCollection, () {
      super.productCollection = value;
    });
  }

  late final _$_FilterModelBaseActionController =
      ActionController(name: '_FilterModelBase', context: context);

  @override
  dynamic setBrand({required List<String> brandCollection}) {
    final _$actionInfo = _$_FilterModelBaseActionController.startAction(
        name: '_FilterModelBase.setBrand');
    try {
      return super.setBrand(brandCollection: brandCollection);
    } finally {
      _$_FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProduct({required List<Map<String, dynamic>> productCollection}) {
    final _$actionInfo = _$_FilterModelBaseActionController.startAction(
        name: '_FilterModelBase.setProduct');
    try {
      return super.setProduct(productCollection: productCollection);
    } finally {
      _$_FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setempproduct(
      {required List<Map<String, dynamic>> productempCollection}) {
    final _$actionInfo = _$_FilterModelBaseActionController.startAction(
        name: '_FilterModelBase.setempproduct');
    try {
      return super.setempproduct(productempCollection: productempCollection);
    } finally {
      _$_FilterModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
brandCollection: ${brandCollection},
productCollection: ${productCollection}
    ''';
  }
}
