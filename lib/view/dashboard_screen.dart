import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:impero_practical_task/controller/dashboard_controller.dart';
import 'package:impero_practical_task/view/widget/category_widget.dart';
import 'package:impero_practical_task/view/widget/product_list.dart';

import '../constants/color_constants.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);
  final DashboardController controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ESP TILES'),
        centerTitle: true,
        foregroundColor: secondaryColor,
        backgroundColor: primaryColor,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.filter_alt_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: Obx(
        () => controller.loadingCategories.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(color: primaryColor),
                    child: SizedBox(
                      height: 50,
                      child: GetBuilder<DashboardController>(
                        builder: (ctr) => ListView.builder(
                          itemBuilder: (ctx, index) => CategoryWidget(
                            category: controller.categories[index],
                            selected: controller.selectedCategoryIndex.value == index,
                            onTap: () {
                              controller.onCategorySelect(index);
                            },
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.categories.length,
                        ),
                        init: DashboardController.to,
                      ),
                    ),
                  ),
                  GetBuilder<DashboardController>(
                    builder: (ctr) => Expanded(
                      child: ListView.builder(
                        controller: controller.subcategoryScrollController,
                        itemBuilder: (ctx, index) => ProductList(
                            subcategory: controller.categories[controller.selectedCategoryIndex.value].subcategories[index]),
                        itemCount: controller.categories[controller.selectedCategoryIndex.value].subcategories.length,
                      ),
                    ),
                    init: DashboardController.to,
                  ),
                ],
              ),
      ),
    );
  }
}
