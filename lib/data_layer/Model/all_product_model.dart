class ProductModel {
  final String id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RateModel ratting;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.ratting});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      ratting: RateModel.fromJson(
        jsonData['rating'],
      ),
    );
  }
}

class RateModel {
  final String rate;
  final String count;

  RateModel({
    required this.rate,
    required this.count,
  });

  factory RateModel.fromJson(jsonData) {
    return RateModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
