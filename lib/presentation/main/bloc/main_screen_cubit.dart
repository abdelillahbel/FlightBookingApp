import 'package:bloc/bloc.dart';
import 'package:flightbookapp/presentation/main/bloc/main_screen_state.dart';

class MainScreenCubit extends Cubit<MainScreenState> {
  MainScreenCubit() : super(MainScreenState(pageIndex: 0));

  void changeTab({required int destinationIndex}) =>
      emit(MainScreenState(pageIndex: destinationIndex));
}
