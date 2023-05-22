import 'package:flutter/material.dart';
import 'package:impero_practical_task/modal/subcategory.dart';
import 'package:impero_practical_task/view/widget/product_tile.dart';

class ProductList extends StatelessWidget {
  const ProductList({required this.subcategory, Key? key}) : super(key: key);
  final Subcategory subcategory;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            subcategory.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          constraints: const BoxConstraints(minHeight: 175, maxHeight: 200),
          // height: 175,
          child: ListView.builder(
            itemBuilder: (ctx, index) => ProductTile(product: subcategory.products[index]),
            itemCount: subcategory.products.length,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }
}
