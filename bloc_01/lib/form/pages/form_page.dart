import 'package:bloc_01/form/cubit/form_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormPage extends StatelessWidget {
  FormPage({super.key});

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<FormCubit, FormPageState>(
                builder: (context, state) {
                  return Text('Hello ${state.name ?? 'белгисиз адам'}');
                },
              ),
              TextFormField(
                controller: controller,
                // onChanged: (value) {
                //   context.read<FormCubit>().saveName(name: value);
                // },
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<FormCubit>().saveName(name: controller.text);
                  controller.clear();
                },
                child: Text('Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
