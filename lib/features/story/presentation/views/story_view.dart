import 'package:flutter/material.dart';
import 'package:what_if/core/utils/components/custom_scaffold.dart';
import 'package:what_if/features/story/presentation/views/widgets/story_body.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    // displaySound(type: SoundType.story);
    return const CustomScaffold(
      body: StoryBody(),
    );
  }
}
