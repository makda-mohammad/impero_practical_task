import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:impero_practical_task/modal/subcategory.dart';
import 'package:impero_practical_task/repository/data_repo.dart';

import '../modal/category.dart';

class DashboardController extends GetxController {
  static DashboardController get to => Get.find();
  RxList<Category> categories = RxList.empty();
  RxInt selectedCategoryIndex = RxInt(0);
  RxBool loadingCategories = RxBool(true);
  RxBool loadingSubcategories = RxBool(true);
  ScrollController subcategoryScrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetchCategory();
  }

  Future<void> fetchCategory() async {
    loadingCategories(true);
    categories.clear();
    final result = await DataRepo.getCategory();
    if (result['Status'] == 200) {
      List<dynamic> categoriesMap = result['Result']['Category'];
      for (int i = 0; i < categoriesMap.length; i++) {
        categories.add(Category.fromJson(categoriesMap[i]));
      }

      print(categories.length);
    }
    subcategoryScrollController.addListener(() {
      if (subcategoryScrollController.position.extentAfter < 500 &&
          subcategoryScrollController.position.userScrollDirection == ScrollDirection.forward) {
        fetchMoreSubcategories();
      }
    });
    loadingCategories(false);
  }

  Future<void> onCategorySelect(int index) async {
    selectedCategoryIndex.value = index;
    print(index);
    loadingSubcategories(true);
    categories[selectedCategoryIndex.value].subcategories.clear();
    final result = await DataRepo.getSubCategoryAndProduct(categories[selectedCategoryIndex.value].id, '1');
    if (result['Status'] == 200) {
      Map<String, dynamic> categoriesMap = result['Result']['Category'][0];
      categories[selectedCategoryIndex.value] = Category.fromJson(categoriesMap);

      print(categories.length);
    }
    loadingSubcategories(false);
    update();
  }

  fetchMoreSubcategories() async {
    if (!loadingSubcategories.value) {
      loadingSubcategories(true);
      if (categories[selectedCategoryIndex.value].subcategories.length % 5 == 0) {
        final result = await DataRepo.getSubCategoryAndProduct(categories[selectedCategoryIndex.value].id,
            '${(categories[selectedCategoryIndex.value].subcategories.length ~/ 5) + 1}');
        if (result['Status'] == 200) {
          List<dynamic> subcategoriesMap = result['Result']['Category'][0]['SubCategories'] ?? [];
          subcategoriesMap.forEach((element) {
            log(element.toString());
            categories[selectedCategoryIndex.value].subcategories.add(Subcategory.fromJson(element));
          });

          print(categories.length);
        }
        update();
        loadingSubcategories(false);
      }
    }
  }

  fetchMoreProducts() {}
}
