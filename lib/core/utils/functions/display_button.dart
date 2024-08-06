import 'package:audioplayers/audioplayers.dart';
import 'package:what_if/core/utils/app_strings.dart';

enum SoundType { button, story }

final player = AudioPlayer();

//display  Sound
Future<void> displaySound({SoundType type = SoundType.button}) async {
  if (type == SoundType.story) {
    await player.play(AssetSource(AppStrings.storySound));
  } else {
    await player.play(AssetSource(AppStrings.buttonSound));
  }
}
