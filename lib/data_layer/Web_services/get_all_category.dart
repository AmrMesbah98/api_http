import 'package:store/hlper/classAPI.dart';

class AllCategoryServices {
  Future<List<dynamic>> getAllCategory() async {
    List<dynamic> data =
        await API.get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
