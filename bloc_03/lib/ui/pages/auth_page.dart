import 'package:bloc_03/core/enum/fetch_enum.dart';
import 'package:bloc_03/data/model/user_model.dart';
import 'package:bloc_03/ui/cubit/auth_cubit.dart';
import 'package:bloc_03/ui/cubit/auth_state.dart';
import 'package:bloc_03/ui/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatelessWidget {
  AuthPage({super.key});

  final nameCtl = TextEditingController();
  final jobCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 90),
            TextFormField(
              controller: nameCtl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: jobCtl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            BlocListener<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state.status == FetchStatus.loading) {
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularProgressIndicator(),
                          ],
                        ),
                      );
                    },
                  );
                } else if (state.status == FetchStatus.success) {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                }
              },
              child: ElevatedButton(
                onPressed: () {
                  if (nameCtl.text.isNotEmpty && jobCtl.text.isNotEmpty) {
                    context.read<AuthCubit>().registerCubit(
                        UserModel(name: nameCtl.text, job: jobCtl.text));
                  }
                },
                child: const Text('register'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
