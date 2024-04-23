import 'package:bloc_02/cubit/home_cubit.dart';
import 'package:bloc_02/data/remote_data.dart';
import 'package:bloc_02/pages/home_page.dart';
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
      create: (context) => HomeCubit(remoteData: RemoteData())..getData(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
