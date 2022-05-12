import 'package:ecobiz_mobile_flutter/config/api_client_environtment.dart';
import 'package:ecobiz_mobile_flutter/config/base_config_connection.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/null_safety.dart';
import 'package:ecobiz_mobile_flutter/data/data_source/urls.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/handle_failure.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/response_object.dart';
import 'package:ecobiz_mobile_flutter/data/model/others/tupple.dart';
import 'package:ecobiz_mobile_flutter/data/model/request/forgot_password_request.dart';
import 'package:ecobiz_mobile_flutter/data/model/request/register_request.dart';
import 'package:ecobiz_mobile_flutter/data/model/request/token_request.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/forgot_password_response.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/get_token_response.dart';
import 'package:ecobiz_mobile_flutter/data/model/response/register_response.dart';
import 'package:ecobiz_mobile_flutter/services/internal_external_service/get_data_api.dart';

class Connection extends ApiClientEnvironment with BaseConfigConnection {
    Connection._privateConstructor();

  static final Connection _instance = Connection._privateConstructor();

  static Connection get getInstance => _instance;

  GetDataApi getDataAPI = GetDataApi.getInstance;


  Future<GetTokenResponse> fetchTokenResponse(
      String user_email, String user_password) async {
    Tupple<HandleFailure, ResponseObject> data =
        await getDataAPI.postdataAPIHeadersBody(
            baseUrl: baseUrl,
            headers: headers,
            endPoint: Urls.requestToken,
            nullSafety: DataNullSafety.errorDefeault,
            serializer: GetTokenResponse.serializer,
            bodyObject: TokenRequest(user_email: user_email, user_password: user_password,)
                .toMap());

    GetTokenResponse dataResult = data.onSuccess as GetTokenResponse;

    if (dataResult.error != null) {
      onCheckStatus(dataResult.error!.code);
    }

    return dataResult;
  }

  Future<RegisterResponse> fetchRegisterResponse(
     String user_email, int user_mobile_number ,String user_password) async {
    Tupple<HandleFailure, ResponseObject> data =
        await getDataAPI.postdataAPIHeadersBody(
            baseUrl: baseUrl,
            headers: headers,
            endPoint: Urls.registerToken,
            nullSafety: DataNullSafety.errorDefeault,
            serializer: RegisterResponse.serializer,
            bodyObject: RegisterRequest(user_mobile_number: user_mobile_number,user_email: user_email,user_password: user_password,)
                .toMap());

    RegisterResponse dataResult = data.onSuccess as RegisterResponse;

    if (dataResult.error != null) {
      onCheckStatus(dataResult.error!.code);
    }

    return dataResult;
  }

  Future<ForgotPasswordResponse> fetchForgotResponse(
     String user_email, ) async {
    Tupple<HandleFailure, ResponseObject> data =
        await getDataAPI.postdataAPIHeadersBody(
            baseUrl: baseUrl,
            headers: headers,
            endPoint: Urls.forgotToken,
            nullSafety: DataNullSafety.errorDefeault,
            serializer: ForgotPasswordResponse.serializer,
            bodyObject: ForgotPasswordRequest(user_email: user_email)
                .toMap());

    ForgotPasswordResponse dataResult = data.onSuccess as ForgotPasswordResponse;

    if (dataResult.error != null) {
      onCheckStatus(dataResult.error!.code);
    }

    return dataResult;
  }


 
}