import '../../../../../models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final CategoryModel category;
  final VoidCallback onTap;

  const CategoryWidget({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: category.color,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Icon(
              category.icon,
              size: 4,
            ),
            const SizedBox(width: 5),
            Text(
              category.name,
              style: const TextStyle(
                  fontSize: 8
              ),
            ),
          ],
        ),
      ),
    );
  }
}