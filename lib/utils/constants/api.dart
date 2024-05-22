class Api{

  ///api key

  static const String API_KEY = "c4ecd0bec32182292c9d96ef9f6bc72917028d1b6c0628d1d517f7738c5b11749b422718900b00f37b8754bf7720aeb3e1806160680395a1c45f7365d6c7d0f8";
  static const String BASE_URL = "https://dev2.vida24.com/api/";

  static const String LOGIN_URL = "${BASE_URL}login";
  static const String REGISTER_URL = "${BASE_URL}register";
  static const String USER_URL = "${BASE_URL}user";
  static const String RESET_URL = "${BASE_URL}reset";
  static const String PERMISSIONS_URL = "${BASE_URL}permissions";
  static const String CHECK_URL = "${BASE_URL}check";
  static const String REFRESH_URL = "${BASE_URL}refresh";
  static const String BOOKINGS_URL = "${BASE_URL}calendar";

  static const String MESSAGES_URL = "${BASE_URL}messages";
  static const String SENT_MESSAGES_URL = "sent";
  static const String PATIENTS_URL = "${BASE_URL}user";
  static const String QUESTIONNAIRES_URL = "${BASE_URL}questionnaire";
  static const String DOCTORS_URL = "${BASE_URL}doctors";

  static const String WEARABLES_URL = "${BASE_URL}activity_tracking";
  static const String WEARABLES_ALERTS_URL = "${BASE_URL}alerts";
  static const String WEARABLE_ASSIGNMENT_URL = "${BASE_URL}device-mac";
  static const String END_INCIDENT = "${BASE_URL}endincident";

  static const String DEVICES_URL = "${BASE_URL}devices";
  static const String ASSIGN_DEVICE_URL = "${BASE_URL}devices/assign";
  static const String DEVICE_URL = "${BASE_URL}device";


  static const String LOCATIONS_URL = "${BASE_URL}locations";

  static const String CDSS_ADMISSION_URL = "https://covid-x-dss-tool.med.auth.gr/api/dss";
  static const String ALERTS_SETTINGS_URL = "https://covid-x-dss-tool.med.auth.gr/api/settings";
  static const String ALERTS_URL = "https://covid-x-dss-tool.med.auth.gr/api/measurements";

}