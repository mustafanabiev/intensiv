import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(san: 0, san2: 1, san3: 2));

  void koshuu() {
    emit(state.copyWith(san: state.san + 1));
  }

  void koshuu2({required int san}) {
    emit(state.copyWith(san2: state.san2 + 1));
  }

  void koshuu3() {
    emit(state.copyWith(san3: state.san3 + 1));
  }
}
