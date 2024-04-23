import 'package:bloc_02/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 215, 255),
      body: Center(
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if (state is HomeLoading) {
              return const CircularProgressIndicator(color: Colors.white);
            } else if (state is HomeSuccess) {
              return Card(
                child: ListTile(
                  leading: Text(state.userModel!.firstName),
                  title: Text(state.userModel!.lastName),
                  subtitle: Text(state.userModel!.id.toString()),
                  trailing: Image.network(state.userModel!.avatar),
                ),
              );
            } else if (state is HomeError) {
              return Text(state.error ?? 'Error');
            } else {
              return const Text('Error');
            }
            // if (state.userModel != null) {
            // return Card(
            //   child: ListTile(
            //     leading: Text(state.userModel!.firstName),
            //     title: Text(state.userModel!.lastName),
            //     subtitle: Text(state.userModel!.id.toString()),
            //     trailing: Image.network(state.userModel!.avatar),
            //   ),
            // );
            // } else {
            //   return const CircularProgressIndicator(color: Colors.white);
            // }
          },
        ),
      ),
    );
  }
}
