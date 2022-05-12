
abstract class BaseUrl {
  BaseUrl._();

  static final urls = Urls();

  static const baseUrl = "http://103.55.36.163";
}

class Urls {
  Urls();

  // User Auth
  // static const registerContributor = '/contributor/auth/register';
  // static const sendOtpCode = '/contributor/auth/phone/send-otp';
  // static const verifyPhoneNumber = '/contributor/auth/phone/verify';
  // static const sendEmailVerify = '/contributor/auth/email/send-verification';
  static const requestToken = '/authentication/api/v1/authentication/user';
  static const registerToken = '/authentication/api/v1/authentication/register';
  static const forgotToken = '/user/api/v1/users/forget-password';
  static const categoryUsers = '/user/api/v1/users/list-category-user';
  static updateProfile(String id) => '/user/api/v1/users/update/$id';
  static const getMeUrls = '/user/api/v1/users/get-user-data';
  static const getAllProvince = '/user/api/v1/users/list-provinces';
  static getAllRegencies(String province_id ) => '/user/api/v1/users/list-regencies/$province_id';
  static getAllDistricts(String regencies_id ) => '/user/api/v1/users/list-districts/$regencies_id';
  static getAllVillages(String districts_id ) => '/user/api/v1/users/list-villages/$districts_id';

}
