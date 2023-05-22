class Product {
  String name;
  String priceCode;
  String imageName;
  int id;

  Product({
    required this.name,
    required this.priceCode,
    required this.imageName,
    required this.id,
  });

  factory Product.fromJson(dynamic json) {
    return Product(
        name: json['Name'] ?? '', priceCode: json['PriceCode'] ?? '', imageName: json['ImageName'] ?? '', id: json['Id'] ?? '');
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Name'] = name;
    map['PriceCode'] = priceCode;
    map['ImageName'] = imageName;
    map['Id'] = id;
    return map;
  }
}
