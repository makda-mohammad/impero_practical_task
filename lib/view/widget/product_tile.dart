import 'package:flutter/material.dart';
import 'package:impero_practical_task/constants/color_constants.dart';
import 'package:impero_practical_task/modal/product.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({required this.product, Key? key}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 125,
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.hardEdge,
              child: Stack(
                children: [
                  Image.network(
                    product.imageName,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 125,
                  ),
                  Container(
                    decoration: BoxDecoration(color: tagBgColor, borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.all(4.0),
                    margin: const EdgeInsets.all(7.0),
                    child: Text(
                      product.priceCode,
                      style: const TextStyle(color: secondaryColor, fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.name,
              textAlign: TextAlign.center,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
