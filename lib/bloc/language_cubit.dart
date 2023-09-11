import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageCubit extends Cubit<String> {
  LanguageCubit(String code) : super(code);

  set(String code) {
    emit(code);
  }
}
