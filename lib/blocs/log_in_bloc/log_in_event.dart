part of 'log_in_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {

  const factory LogInEvent.googleLoginEvent() = googleLoginEvent;

  const factory LogInEvent.back() = back;

}
