import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
part 'Model.g.dart';

// ignore: library_private_types_in_public_api
class FilterModel = _FilterModelBase with _$FilterModel;

abstract class _FilterModelBase with Store {
  


  @observable
  List<String> brandCollection = [];

  @observable
  List<Map<String,dynamic>> productCollection = [{}];
  List<Map<String,dynamic>> productempCollection = [{}];


  @action
  setBrand({required List<String> brandCollection}) {
    this.brandCollection = [];
    this.brandCollection = brandCollection;
  }

  @action
  setProduct({required List<Map<String,dynamic>> productCollection}) {
    this.productCollection = [];
    this.productCollection = productCollection;
  }

  @action
  setempproduct({required List<Map<String,dynamic>> productempCollection}) {
    this.productempCollection = [];
    this.productempCollection = productempCollection;
  }
}
