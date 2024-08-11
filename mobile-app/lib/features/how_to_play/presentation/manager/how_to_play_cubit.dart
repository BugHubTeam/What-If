import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'how_to_play_state.dart';

class HowToPlayCubit extends Cubit<HowToPlayState> {
  HowToPlayCubit() : super(HowToPlayInitial());
}
