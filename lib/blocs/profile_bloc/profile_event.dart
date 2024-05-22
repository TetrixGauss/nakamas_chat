part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.showProfile() = showProfileEvent;
  const factory ProfileEvent.changeStatus(String status) = changeStatusEvent;
  const factory ProfileEvent.back() = backEvent;
  const factory ProfileEvent.togglePicture() = togglePictureEvent;
  const factory ProfileEvent.logout() = logoutEvent;
  const factory ProfileEvent.deleteAccount() = deleteAccountEvent;
}
