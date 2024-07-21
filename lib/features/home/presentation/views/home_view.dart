import 'package:flutter/material.dart';
import '../../../../core/utils/components/custom_scaffold.dart';
import 'widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: HomeBody(),
    );
  }
}