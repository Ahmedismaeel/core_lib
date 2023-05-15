class Endpoints {
  static const String createTeam = "$baseUrl/core/api/v1/teams";

  /////////////////////////////

  static const String layout = "$baseUrl/api/v1/layouts/list?page=0&size=20";
  static const String getUser = "$baseUrl/api/v1/users/user";
  static const String subCategory =
      "$baseUrl/api/v1/sub-categories/list?page=0&size=20";
  static const String category =
      "$baseUrl/api/v1/categories/list?page=0&size=20";
  static const String config = "$baseUrl/api/v1/app-configs/list";
  static const String pageSizes =
      "$baseUrl/api/v1/page-sizes/list?page=0&size=20";
  static const String coverType =
      "$baseUrl/api/v1/cover-types/list?page=0&size=20";
  static const String country = "$baseUrl/api/v1/countries/list?page=0&size=20";
  static const String fileUrl = "$baseUrl/api/v1/files/";
  static const String currency =
      "$baseUrl/api/v1/currencies/list?page=0&size=20";

  static const String placeOrder = "${baseUrl}/api/v1/orders/save";
  static const String orderList = "${baseUrl}/api/v1/orders/user/list";
  static const String forgetPasswordEmail =
      "${baseUrl}/api/v1/users/email/forgetPassword?email=";
  static const String resetPasswordEmail =
      "${baseUrl}/api/v1/users/email/forgetPassword/verifyAndReset";
  static const String addressList =
      "$baseUrl/api/v1/shipping-addresses/user/list";
  static const String saveAddress = "$baseUrl/api/v1/shipping-addresses/save";
  static const String updateAddress =
      "$baseUrl/api/v1/shipping-addresses/update";
  //////////////////////////////////////
  static const String team = "$baseUrl/core/api/v1/teams";
  static const String isPartOfTeam = "$team/is-part-of-team";
  static const String getUsers = "$baseUrl/kernel/api/v1/profile/search";
  static const String myTeam = "$baseUrl/core/api/v1/teams/my-teams";

  static const String invitePlayers = "$baseUrl/core/api/v1/teams/invite";
  static const String teamTasks = "$baseUrl/core/api/v1/teams/tasks";
  static const String teamAlbum = "$baseUrl/core/api/v1/teams/albums";
  static const String albumWithMedia = "$baseUrl/core/api/v1/teams/media";
  static const String joinTeam = "$baseUrl/core/api/v1/teams/join";
  static const String rejectJoin = "$baseUrl/core/api/v1/teams/join/reject";
  static const String approveJoin = "$baseUrl/core/api/v1/teams/join/approve";

  static const String getAbout = "$baseUrl/core/api/v1/teams/about";

  static const String createChallenge = "$baseUrl/core/api/v1/challenges";
  static const String challengeCard = "$baseUrl/core/api/v1/challenges/card";
  static const String challenge = "$baseUrl/core/api/v1/challenges";

  // "$baseUrl/core/api/v1/teams/media/{teamId}

  ///core/api/v1/teams/albums/{teamId}

  Endpoints._();

  // base ur
  static const String baseUrl = "http://191.96.53.135:9191";

  // receiveTimeout
  static const int receiveTimeout = 50;

  // connectTimeout
  static const int connectionTimeout = 50;

  // booking endpoints
  static const String getPosts = "$baseUrl/posts";

  static const String getSportsList = "$baseUrl/kernel/api/v1/sport/all";
  static const String getPositionList = "$baseUrl/kernel/api/v1/position/all";
  static const String getPositionListBySportId =
      "$baseUrl/kernel/api/v1/position/sport/";
  static const String getPrivacyList = "$baseUrl/kernel/api/v1/privacy/all";
  static const String getAreaList = "$baseUrl/kernel/api/v1/area/all";
  static const String getGenderList = "$baseUrl/kernel/api/v1/gender/all";
  static const String getAlbumList = "$baseUrl/core/api/v1/teams/albums";
  static const String updateProfile =
      "$baseUrl/kernel/api/v1/profile/updateProfile";

  static const String getUserProfileList =
      "$baseUrl/kernel/api/v1/profile/profile-list";
  static const String updateProfileInfo = "/kernel/api/v1/profile/update/info";
  static const String updateProfileImage =
      "/kernel/api/v1/profile/update/profile-picture";
  static const String getUserProfile = "/kernel/api/v1/profile/user";
  static const String signUp = "$baseUrl/api/v1/users/signup";
  static const String logIn = "$baseUrl/api/login";
  static const String verifyOtp = "$baseUrl/api/v1/otp/verify";
  static const String resendOtp = "$baseUrl/api/v1/otp/send";
  static const String updateToken = "$baseUrl/api/setToken";
  static const String forgetPassword =
      "$baseUrl/api/v1/shipping-addresses/user/list";
  // "$baseUrl/api/forgetPassword"; //"/$phone"
  static const String verifyOtpForgetPassword =
      "$baseUrl/api/v1/otp/forgetPassword/verify";
  static const String newPassword = "$baseUrl/api/recoverPassword";
  static const String profileImage = "$baseUrl/kernel/api/v1/files/";
  static const String coreImage = "$baseUrl/core/api/v1/files/";

  ///71949004/password=123456"

  static const String deleteAccount = "$baseUrl/delete";
}
