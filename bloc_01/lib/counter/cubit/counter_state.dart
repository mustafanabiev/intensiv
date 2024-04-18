part of 'counter_cubit.dart';

class CounterState {
  const CounterState({
    required this.san,
    required this.san2,
    required this.san3,
  });

  final int san;
  final int san2;
  final int san3;

  CounterState copyWith({
    int? san,
    int? san2,
    int? san3,
  }) {
    return CounterState(
      san: san ?? this.san,
      san2: san2 ?? this.san2,
      san3: san3 ?? this.san3,
    );
  }
}
