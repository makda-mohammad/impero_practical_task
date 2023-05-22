import 'package:flutter/material.dart';
import 'package:impero_practical_task/constants/color_constants.dart';
import 'package:impero_practical_task/modal/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({required this.category, required this.selected, required this.onTap, Key? key}) : super(key: key);
  final Category category;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !selected ? onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          category.name,
          style: TextStyle(color: selected ? secondaryColor : inactiveTextColor),
        ),
      ),
    );
  }
}
