import 'package:flutter/material.dart';
import '../../../../core/utils/components/custom_scaffold.dart';
import 'widgets/categories_body.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: CategoriesBody(),
    );
  }
}
