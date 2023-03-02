import '../../hlper/classAPI.dart';
import '../Model/all_product_model.dart';

class UpdateProduct{
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await API.post(
      url: 'https://fakestoreapi.com/products',
      body: {
        "title": title,
        "price": price,
        "description": description,
        "image": image,
        "category": category,
      },
    );

    return ProductModel.fromJson(data);
  }
}