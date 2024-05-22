part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  factory DashboardState.initial() {
    return DashboardState(dashboardStatus: DashboardStatus.init, errorMessage: "", convoID: "", peerID: "", conversations: [], users: [], listScrollController: ScrollController());
  }

  const factory DashboardState({
    required DashboardStatus dashboardStatus,
    required String errorMessage,
    required String? convoID,
    required String peerID,
    required List<Conversation> conversations,
    required List<User> users,
    required ScrollController listScrollController
  }) = dashboardState;
}
