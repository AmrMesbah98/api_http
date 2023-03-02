import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store/data_layer/Model/all_product_model.dart';
import 'package:store/hlper/classAPI.dart';

class AllProductServices {
  Future<List<ProductModel>> getAllProduct() async {
    List<dynamic> data =
        await API.get(url: 'https://fakestoreapi.com/products');


    List<ProductModel> ProductList = [];

    for (int i = 0; i < data.length; i++) {
      ProductList.add(ProductModel.fromJson(data[i]));
    }
    return ProductList;
  }
}
