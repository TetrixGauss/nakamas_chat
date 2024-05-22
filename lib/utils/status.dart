enum NetworkResponseStatus { success, networkError, failed }

enum LoginStatus {
  logInFailed,
  logInSuccessful,
  logInLoading,
  logInWaiting,
  noInternet
}

enum ChatStatus {
  init,
  showingMessages,
  messageSent,
  messageFailed,
  back
}

enum SplashStatus{
  init,
  logIn,
  dashboard,
  checkLoggingIn
}

enum DashboardStatus {
  init,
  showConversations,
  empty,
  goToConversation,
  goToProfile
}

enum ProfileStatus {
  init,
  showProfile,
  loggedOut,
  accountDeleted,
  back
}


