import 'product.dart';

class Subcategory {
  int id;
  String name;
  List<Product> products = [];

  Subcategory({required this.id, required this.name});

  factory Subcategory.fromJson(dynamic json) {
    final subcategory = Subcategory(id: json['Id'] ?? '', name: json['Name']);
    if (json['Product'] != null) {
      List<dynamic> productsMap = json['Product'];
      productsMap.forEach(
        (element) {
          subcategory.products.add(Product.fromJson(element));
        },
      );
    }
    return subcategory;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['Name'] = name;
    return map;
  }
}
