import 'package:bloc_03/ui/cubit/auth_cubit.dart';
import 'package:bloc_03/ui/cubit/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check,
              color: Colors.green,
              size: 200,
            ),
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                // if (state.userModel != null) {
                //   return Card(
                //     child: ListTile(
                //       leading: Text(state.userModel!.id.toString()),
                //       title: Text(state.userModel!.name.toString()),
                //       subtitle: Text(state.userModel!.job.toString()),
                //       trailing: Text(state.userModel!.createdAt.toString()),
                //     ),
                //   );
                // } else {
                //   return Center(child: Text('error'));
                // }
                if (state.userModel == null) {
                  return const Center(child: Text('error'));
                } else {
                  return Card(
                    child: ListTile(
                      leading: Text(state.userModel!.id.toString()),
                      title: Text(state.userModel!.name.toString()),
                      subtitle: Text(state.userModel!.job.toString()),
                      trailing: Text(state.userModel!.createdAt.toString()),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
