import 'package:flutter_bloc/flutter_bloc.dart';

part 'form_state.dart';

class FormCubit extends Cubit<FormPageState> {
  FormCubit() : super(FormPageState());

  void saveName({String? name}) {
    if (name != null) {
      emit(FormPageState(name: name));
    }
  }
}
