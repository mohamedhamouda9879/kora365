import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kora/modules/live/cubit/states.dart';

class LiveCubit extends Cubit<LiveStates> {
  LiveCubit() : super(LiveInitialStates());

  static LiveCubit get(context) => BlocProvider.of(context);
}
