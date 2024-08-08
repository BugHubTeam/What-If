import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import '../../../../../config/routes/route_name.dart';
import 'sub_category_item.dart';

class SubCategoriesGridView extends StatefulWidget {
  const SubCategoriesGridView({super.key});

  @override
  State<SubCategoriesGridView> createState() => _SubCategoriesGridViewState();
}

class _SubCategoriesGridViewState extends State<SubCategoriesGridView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.898,
          crossAxisSpacing: 24,
          mainAxisSpacing: 24,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onDoubleTap: () {
              Navigator.pushNamed(context, RoutesName.questionsView);
            },
            child: Bounceable(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: SubCategoryItem(
                isSelected: index == currentIndex,
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
