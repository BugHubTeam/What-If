import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:what_if/features/sub_category/domain/entities/sub_category_entity.dart';
import 'package:what_if/features/sub_category/presentation/cubit/sub_category_cubit.dart';
import 'sub_category_item.dart';

class SubCategoriesGridView extends StatefulWidget {
  const SubCategoriesGridView({
    super.key,
    this.subCategoryList,
  });
  final List<SubCategoryEntity>? subCategoryList;

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
            child: Bounceable(
              onTap: () {
                SubCategoryCubit.subCategoryName =
                    '${widget.subCategoryList?[index].name}';

                setState(() {
                  currentIndex = index;
                });
              },
              child: SubCategoryItem(
                isSelected: index == currentIndex,
                subCategoryEntity: widget.subCategoryList?[index],
              ),
            ),
          );
        },
        itemCount: widget.subCategoryList?.length ?? 4,
      ),
    );
  }
}
