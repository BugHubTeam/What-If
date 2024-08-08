import 'package:flutter/material.dart';
import '../../../../core/utils/components/custom_scaffold.dart';
import 'widgets/sub_category_body.dart';

class SubCategoryView extends StatelessWidget {
  const SubCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: SubCategoryBody(),
    );
  }
}
