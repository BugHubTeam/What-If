import 'package:flutter/material.dart';
import 'package:what_if/core/utils/components/custom_scaffold.dart';
import 'widgets/how_to_play_body.dart';

class HowToPlayView extends StatelessWidget {
  const HowToPlayView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      body: HowToPlayBody(),
    );
  }
}
