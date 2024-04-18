import 'package:bloc_01/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int san = 10;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.san}',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().koshuu();
              },
              child: const Icon(Icons.add),
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.san2}',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().koshuu2(san: san);
              },
              child: const Icon(Icons.add),
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.san3}',
                  style: const TextStyle(
                    fontSize: 50,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().koshuu3();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
