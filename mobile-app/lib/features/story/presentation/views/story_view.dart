import 'package:flutter/material.dart';
import '../../../../core/utils/components/custom_scaffold.dart';
import 'widgets/story_body.dart';

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
