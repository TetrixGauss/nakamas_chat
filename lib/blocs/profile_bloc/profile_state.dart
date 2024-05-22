part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState.initial() {

    return ProfileState(profileStatus: ProfileStatus.init, errorMessage: "", user: User.newUser(), statusController: TextEditingController());
  }

  const factory ProfileState({
    required ProfileStatus profileStatus,
    required String errorMessage,
    required User user,
    required TextEditingController statusController,
  }) = profileState;
}
