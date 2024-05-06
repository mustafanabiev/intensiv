import 'package:bloc_03/data/datasource/remote_data_source.dart';
import 'package:bloc_03/ui/cubit/auth_cubit.dart';
import 'package:bloc_03/ui/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(RemoteDataSource()),
      child: MaterialApp(
        home: AuthPage(),
      ),
    );
  }
}
