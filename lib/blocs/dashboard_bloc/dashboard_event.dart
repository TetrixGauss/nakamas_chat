part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {

  const factory DashboardEvent.showAllConverations() = showAllConverationsEvent;
  const factory DashboardEvent.addUser() = addUserEvent;
  const factory DashboardEvent.goToConvertation(String peerID) = goToConvertationEvent;
  const factory DashboardEvent.goToProfile() = goToProfileEvent;


}
