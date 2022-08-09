import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit()
      : super(
          const SettingsState(
            appNotifications: false,
            emailNotifications: false,
          ),
        );

  void toggleAppNotifications(bool newValue) {
    emit(state.copyWith(appNotifications: newValue));
  }

  void toggleEmailNotifications(bool newValue) =>
      emit(state.copyWith(emailNotifications: newValue));
}
