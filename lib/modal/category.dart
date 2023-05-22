import 'package:impero_practical_task/modal/subcategory.dart';

class Category {
  int id;
  String name;
  bool isAuthorize;
  bool update080819;
  bool update130919;
  List<Subcategory> subcategories = [];

  Category({
    required this.id,
    required this.name,
    required this.isAuthorize,
    required this.update080819,
    required this.update130919,
  });

  factory Category.fromJson(dynamic json) {
    final category= Category(
        id: json['Id'] ?? '',
        name: json['Name'],
        isAuthorize: json['IsAuthorize'] == 1,
        update080819: json['Update080819'] == 1,
        update130919: json['Update130919'] == 1);
    if (json['SubCategories'] != null) {
      List<dynamic> subcategoriesMap = json['SubCategories'];
      subcategoriesMap.forEach((element) {
        category.subcategories.add(Subcategory.fromJson(element));

      });
    }
    return category;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Id'] = id;
    map['Name'] = name;
    map['IsAuthorize'] = isAuthorize;
    map['Update080819'] = update080819;
    map['Update130919'] = update130919;
    return map;
  }
}
