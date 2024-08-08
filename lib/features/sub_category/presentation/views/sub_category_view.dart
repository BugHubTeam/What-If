import 'package:flutter/material.dart';
import 'package:what_if/core/utils/components/custom_scaffold.dart';
import 'widgets/sub_category_body.dart';

class SubCategoryView extends StatelessWidget {
  const SubCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    String title = ModalRoute.of(context)?.settings.arguments as String;
    return CustomScaffold(
      body: SubCategoryBody(
        title: title,
      ),
    );
  }
}
