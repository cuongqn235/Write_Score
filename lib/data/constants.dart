abstract class Constants {
  // static const String domainUrl = String.fromEnvironment(
  //   'DOMAIN_URL',
  // );
  static const String domainUrl = 'DOMAIN_URL';
  static const String googleMapUrl = 'https://maps.googleapis.com';

  static const List<String> packageProd = [
    'com.homeforus.dev', //iOS
    'com.fphouse.prod' //Android
  ];

  static const List<String> packageDev = [
    'com.fphouse.dev', //iOS
    'com.example.home_for_us', //Android
  ];

  static const String appNameDev = 'FPAgent Dev';

  static const String appNameProd = 'FPAgent';

  static const String tuyaServer = 'https://openapi.tuyain.com'; // server india

  static const String websocketUrl = String.fromEnvironment('WS_URL');
  static String domainImageUrl(String path) => '$domainUrl/fph-app/$path';

  static String appStoreId =
      const String.fromEnvironment('APPSTORE_ID', defaultValue: '6446346946');

  static String googlePlayStoreId = const String.fromEnvironment(
    'GOOGLEPLAY_ID',
    defaultValue: 'com.fphouse.agency.prod',
  );

  static const String privacyPolicy =
      'https://docs.google.com/document/d/1FreLSXw-1cS7rW_q_nwxWvtQ2xJcb_0p299TI4FK1cw';

  static const String terms =
      'https://docs.google.com/document/d/1V5_gSA-sf4RpTeECl61WGs-nTZh_XZH_0RDSgbxkMjo';

  static const String downloadImgUrl = String.fromEnvironment(
    'DOWNLOAD_IMAGE_URL',
    defaultValue: 'https://fph-prod-storage.hn.ss.bfcplatform.vn/',
  );
}

class TuyaKey {
  static String clientId = '';
  static String secret = '';
}

class HeaderKey {
  HeaderKey._();

  static const String headerAuthorizationKey = 'Authorization';
  static const String platform = 'platform';
  static const String apiKey = 'apikey';
}
