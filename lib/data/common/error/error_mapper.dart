// ignore_for_file: lines_longer_than_80_chars

part of 'error_interceptor.dart';

// "1000100000": "Informational Root Message",
// "1000200000": "Successful Root Message",
// "1000300000": "Redirection Root Message",
// "1000400000": "Client Error Root Message",
// "1000400002": "Accessing to [%s] is forbidden.",
// "1000400003": "Authentication has failed.",
// "1000400004": "Parsing token has failed.",
// "1000400005": "Token is invalid.",
// "1000400006": "Token is missing.",
// "1000400007": "Token has expired.",
// "1000400008": "Not Found KMS Key Info: %s",
// "1000400009": "SecretId: %s must have at least one version",
// "1000400010": "SecretId: %s not found",
// "1000400011": "SecretVersion: %s not found",
// "1000400012": "Token with version: %s invalid",
// "1000400013": "cache id must be not null.",
// "1000400014": "The process is locked",
// "1000400015": "Token signature verification has failed",
// "1000400016": "Cannot convert token granted authority",
// "1000400017": "Missing Request Origin",
// "1000500000": "Internal Server Error",
// "2000100000": "Informational Root Message",
// "2000200000": "Successful Root Message",
// "2000300000": "Redirection Root Message",
// "2000400000": "Client Error Root Message",
// "2000500000": "Internal Server Error",
// "3000100000": "Informational Root Message",
// "3000200000": "Successful Root Message",
// "3000300000": "Redirection Root Message",
// "3000400000": "Client Error Root Message",
// "3000400001": "The %s already exists.",
// "3000400002": "User %s not found.",
// "3000400003": "Cannot find the activation code for user: %s.",
// "3000400004": "Invalid activation code.",
// "3000400005": "Cannot find the challenge nonce.",
// "3000400006": "Address verifier for %s is not supported.",
// "3000400007": "Cannot find the user wallet for user %s.",
// "3000400008": "Signature verification has failed.",
// "3000400009": "Cannot find any login handlers supporting this type: %s.",
// "3000400010": "User %s is under activation.",
// "3000400011": "Invalid credentials.",
// "3000400012": "The target AuthenticationProvider %s has not been supported yet.",
// "3000400013": "Must be an internal user. You might log in with social once.",
// "3000400014": "OTP reset password has been expired for user %s.",
// "3000400015": "Invalid reset code for user %s.",
// "3000400016": "Not supported network verification: %s.",
// "3000400017": "Authentication Provider is required.",
// "3000400018": "Invalid registration form for registering a user.",
// "3000400019": "The OTP Code has been sent.",
// "3000400020": "Password must contain at least 8 characters, upper and lower case letters, and at least a number or special character.",
// "3000400021": "OTP verification failed over %d times. The user has been locked for %d minutes.",
// "3000400022": "Cannot find the wrong times data for user %s.",
// "3000400023": "Social provider %s unsupported.",
// "3000400024": "Your email %s updated. You can not update email.",
// "3000400025": "Email %s has already existed in system.",
// "3000400026": "Email of user %s has not existed. Please set up an email",
// "3000400027": "Setting type %s unsupported.",
// "3000400028": "Smart Wallet Link has not supported for wallet %s.",
// "3000400029": "Cannot load MFA setup key now. Please try again.",
// "3000400030": "User %s has been enabled MFA.",
// "3000400031": "Cannot find setup MFA key for user %s",
// "3000400032": "Invalid MFA Code.",
// "3000400033": "User %s not enabled MFA yet.",
// "3000400034": "User %s not updated with email or password yet.",
// "3000400035": "The password has already been set, you can only change it.",
// "3000400036": "User Internal % not found.",
// "3000400037": "Your current security is incorrect.",
// "3000400038": "mfa code not null.",
// "3000400039": "OTP code not null.",
// "3000400040": "Invalid update email & password otp code.",
// "3000400041": "User %s didn't send a request to update your email & password or OTP Code is expired. Please do it again from the start.",
// "3000400042": "Not support generates OTP code for type %s",
// "3000400043": "OTP Code Not Found %s",
// "3000400044": "Invalid Otp Code",
// "3000400045": "The new password you entered is the same as your old password. Please enter a different password.",
// "3000400046": "User is blocked.",
// "3000500000": "Server Error Root Message",
// "4000100000": "Informational Root Message",
// "4000200000": "Successful Root Message",
// "4000300000": "Redirection Root Message",
// "4000400000": "Client Error Root Message",
// "4000400001": "Constraint violation",
// "4000400002": "Estate %s already exist",
// "4000400003": "Asset  %s already exist",
// "4000400004": "Service %s already exist",
// "4000400005": "Term %s already exist",
// "4000400006": "Estate Detail %s already exist",
// "4000400007": "Estate Address %s already exist",
// "4000400008": "Estate %s not found",
// "4000400009": "Service %s not found",
// "4000400010": "Term %s not found",
// "4000400011": "Asset %s not found",
// "4000400012": "Contract %s not found",
// "4000400013": "Contract %s already exist",
// "4000400014": "Contract User %s already exist",
// "4000400015": "Contract User Detail %s already exist",
// "4000500000": "Internal Server Error",
// "5000500000": "Internal Server Error",
// "5000200000": "Successful Root Message",
// "5000400004": "Failed to create URL based on the S3 input configurations.",
// "5000400001": "Bucket is existing",
// "5000400000": "Client Error Root Message",
// "5000400003": "Bucket %s not found",
// "5000400002": "File %s not found",
// "5000100000": "Informational Root Message",
// "5000300000": "Redirection Root Message"

class _ApiErrorMapper {
  _ApiErrorMapper._();

  static DioError map(DioError e) {
    DioError? result;
    // logE('Error Dio: ${e.response}');
    // if (e.response == null || e.response?.data == null) {
    //   result = e;
    // } else {
    //   final statusCode = e.response!.statusCode;
    //   if (statusCode == 404 &&
    //       e.requestOptions.path.contains(RestApiPath.userWhiteListCheckPhone)) {
    //     result ??= _activeAccountExceptions(e);
    //   } else {
    //     switch (statusCode) {
    //       case 503:
    //       case 502:
    //       case 500:
    //         result = ServerUnReachable(e);
    //         break;
    //       default:
    //         switch (e.requestOptions.path) {
    //           case RestApiPath.register:
    //           case RestApiPath.registerResendOtp:
    //           case RestApiPath.forgotPasswordResendOtp:
    //           case RestApiPath.changePasswordResendOtp:
    //             result = _registerExceptions(e);
    //             break;
    //           case RestApiPath.login:
    //           case RestApiPath.loginOtp:
    //           case RestApiPath.forgotPassword:
    //           case RestApiPath.loginVerifyPassword:
    //           case RestApiPath.changePassword:
    //             result = _loginExceptions(e);
    //             break;
    //           case RestApiPath.loginOtpVerify:
    //           case RestApiPath.registerVerifyOtp:
    //           case RestApiPath.forgotPasswordVerifyOtp:
    //           case RestApiPath.changePasswordVerify:
    //             result = _activeAccountExceptions(e);
    //             break;
    //         }
    //     }
    //   }
    // }
    return result ??= e;
  }

  static DioError? _registerExceptions(DioError e) {
    final errorData =
        ErrorResponse.fromJson(e.response?.data as Map<String, Object?>);
    DioError? result;
    switch (errorData.errorCode) {
      case 3000400009:
        result = OtpHasBeenSent(e);
        break;
      case 3000400001:
        result = PhoneAlreadyExitsException(e);
        break;
      case 3000400011:
        result = OtpBlockAfterManyRetryException(e);
        break;
      case 3000400034:
        result = AccountRegistrationHasBeenLocked(e);
        break;
      case 3000400029:
        result = UserRegisterWhitelistOutOfTimeException(e);
        break;
    }
    return result;
  }

  static DioError? _loginExceptions(DioError e) {
    final errorData =
        ErrorResponse.fromJson(e.response?.data as Map<String, Object?>);
    DioError? result;
    switch (errorData.errorCode) {
      case 3000400002:
        result = AccountNotFoundException(e);
        break;
      case 3000400009:
        result = OtpHasBeenSent(e);
        break;
      case 3000400013:
        result = WrongPasswordException(e);
        break;
      case 3000400011:
        result = PasswordBlockAfterManyRetryException(e);
        break;
      case 3000400006:
        result = AccountAlreadyInVerification(e);
        break;
      case 1000400007:
        result = OutOfTimeOtpException(e);
        break;
      case 3000400022:
        result = PasswordMustNotTheSameAsOldPasswordException(e);
        break;
      case 3000400028:
        result = UserNotInWhiteListException(e);
        break;
      case 3000400029:
        result = UserRegisterWhitelistOutOfTimeException(e);
        break;
      case 3000400030:
        result = UserHasBeenBlockedException(e);
        break;
    }
    return result;
  }

  static DioError? _activeAccountExceptions(DioError e) {
    final errorData =
        ErrorResponse.fromJson(e.response?.data as Map<String, Object?>);
    DioError? result;
    switch (errorData.errorCode) {
      case 3000400004:
        result = OtpInvalidException(e);
        break;
      case 3000400011:
        result = OtpBlockAfterManyRetryException(e);
        break;
      case 3000400003:
        result = OutOfTimeOtpException(e);
        break;
      case 1000400007:
        result = OutOfTimeOtpException(e);
        break;
      case 3000400032:
        result = UserWhiteListNotFoundException(e);
        break;
      case 3000400031:
        result = UserAlreadyInWhiteListException(e);
        break;
    }
    return result;
  }
}

class UnknownErrorException extends DioError {
  UnknownErrorException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Đã có lỗi xảy ra!';
  }
}

class OtpInvalidException extends DioError {
  OtpInvalidException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    final t = response?.data as Map<String, dynamic>;
    final optionalData = t['optionalData'] as Map<String, dynamic>;
    return 'Sai mã OTP, bạn còn ${optionalData['availableTimes'].toString()} lần nhập';
  }
}

class PasswordBlockAfterManyRetryException extends DioError {
  PasswordBlockAfterManyRetryException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    final t = response?.data as Map<String, dynamic>;
    final optionalData = t['optionalData'] as Map<String, dynamic>;
    return 'Sai mât khẩu quá 5 lần, thử lại sau ${optionalData['unlockTime'] ?? 300}s!';
  }
}

class AccountRegistrationHasBeenLocked extends DioError {
  AccountRegistrationHasBeenLocked(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Tài khoản chưa kích hoạt được, liên hệ FPAgent để biết thêm chi tiết!';
  }
}

class OtpBlockAfterManyRetryException extends DioError {
  OtpBlockAfterManyRetryException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Sai OTP quá 5 lần, thử lại sau 300s!';
  }
}

class UserWhiteListNotFoundException extends DioError {
  UserWhiteListNotFoundException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'User không có trong danh sách whitelist!';
  }
}

class OutOfTimeOtpException extends DioError {
  OutOfTimeOtpException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Hết thời gian xử lý, vui lòng thao tác lại!';
  }
}

class PasswordMustNotTheSameAsOldPasswordException extends DioError {
  PasswordMustNotTheSameAsOldPasswordException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Mật khẩu mới không được giống mật khẩu cũ!';
  }
}

class UserAlreadyInWhiteListException extends DioError {
  UserAlreadyInWhiteListException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Số điện thoại đã nằm trong danh sách whitelist!';
  }
}

class UserRegisterWhitelistOutOfTimeException extends DioError {
  UserRegisterWhitelistOutOfTimeException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Tài khoản hết hạn dùng thử!';
  }
}

class UserNotInWhiteListException extends DioError {
  UserNotInWhiteListException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Số điện thoại chưa đăng ký!';
  }
}

class UserHasBeenBlockedException extends DioError {
  UserHasBeenBlockedException(DioError e)
      : super(response: e.response, requestOptions: e.requestOptions);

  @override
  String get message {
    return 'Tài khoản bị khoá, liên hệ FPAgent để biết thêm chi tiết.';
  }
}

class AccountNotFoundException extends DioError {
  AccountNotFoundException(DioError e)
      : super(requestOptions: e.requestOptions, response: e.response);

  @override
  String get message => 'Số điện thoại chưa đăng ký.';
}

class PhoneAlreadyExitsException extends DioError {
  PhoneAlreadyExitsException(DioError e)
      : super(
          response: e.response,
          requestOptions: e.requestOptions,
        );

  @override
  String get message => 'Số điện thoại đã tồn tại';
}

class WrongPasswordException extends DioError {
  WrongPasswordException(DioError e)
      : super(
          response: e.response,
          requestOptions: e.requestOptions,
        );

  @override
  String get message {
    final t = response?.data as Map<String, dynamic>;
    final optionalData = t['optionalData'] as Map<String, dynamic>;
    if (optionalData['availableTimes'] == 0) {
      return 'Sai mật khẩu quá 5 lần, thử lại sau 300s';
    }
    return 'Sai mật khẩu, bạn còn ${optionalData['availableTimes'].toString()} lần nhập';
  }
}

class AccountAlreadyInVerification extends DioError {
  AccountAlreadyInVerification(DioError e)
      : super(
          requestOptions: e.requestOptions,
        );

  @override
  String get message {
    return 'Vui lòng hoàn tất đăng ký trước khi tiếp tục !';
  }
}

class OtpHasBeenSent extends DioError {
  OtpHasBeenSent(DioError e)
      : super(
          requestOptions: e.requestOptions,
          response: e.response,
        );

  @override
  String get message {
    return 'OTP đã được gửi, vui lòng kiểm tra trong tin nhắn điện thoại';
  }
}

// refresh token lỗi
class RefreshTokenExpired extends DioError {
  RefreshTokenExpired({required super.requestOptions});
  @override
  String get message => 'Phiên đăng nhập kết thúc';
}

class AccessTokenExpired extends DioError {
  AccessTokenExpired(DioError e)
      : super(
          requestOptions: e.requestOptions,
          response: e.response,
        );

  @override
  String get message => 'Access Token Expired.';
}

class AccessTokenTimeExpired extends DioError {
  AccessTokenTimeExpired({required super.requestOptions});
  @override
  String get message => 'Access Token Time Expired.';
}

class OldPasswordIncorrectException extends DioError {
  OldPasswordIncorrectException(DioError e)
      : super(requestOptions: e.requestOptions, response: e.response);

  @override
  String get message => 'Mật khẩu cũ không chính xác!';
}

class ServerUnReachable extends DioError {
  ServerUnReachable(DioError e)
      : super(requestOptions: e.requestOptions, response: e.response);

  @override
  String get message => 'Hệ thống đang bảo trì';
}

class UserNotHavePermissionException extends DioError {
  UserNotHavePermissionException(DioError e)
      : super(requestOptions: e.requestOptions, response: e.response);

  static const List<int> permissionErrorCodes = [
    7000400001,
    7000400002,
    7000400003,
    7000400004,
    1000400016,
  ];

  @override
  String get message => 'Bạn không có quyền truy cập vào chức năng này!';
}
