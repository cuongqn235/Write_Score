class CorePhoneUtil {
  static RegExp PHONE_11 = RegExp(
    '^098|^097|^0162|^0163|^0164|^0165|^0166|^0167|^0168|^0169|^0120|^0121|'
    '^0122|^0123|^0124|^0125|^0126|^0127|^0128|^0129|^0186|^0189|^0188|'
    '^0199|^0182|^090|^091|^092|^093|^094|^095|^096|^097|^098|^0129|^099|^086',
  );

  static RegExp PHONE_10 = RegExp(
    '^098|^097|^032|^033|^034|^035|^036|^037|^038|^039|^070|^079|^076|^078|'
    '^083|^084|^085|^081|^082|^056|^058|^0188|^0199|^0182|^077|^059|^090|'
    '^091|^092|^093|^094|^095|^096|^097|^098|^088|^087|^086|^089|^099|^086',
  );

  static const PHONE_MAPPING = {
    '0162': '032',
    '0163': '033',
    '0164': '034',
    '0165': '035',
    '0166': '036',
    '0167': '037',
    '0168': '038',
    '0169': '039',
    '0120': '070',
    '0121': '079',
    '0122': '077',
    '0126': '076',
    '0128': '078',
    '0123': '083',
    '0124': '084',
    '0125': '085',
    '0127': '081',
    '0129': '082',
    '0186': '056',
    '0188': '058',
    '0199': '059',
    '0182': '052',
    '090': '090',
    '091': '091',
    '092': '092',
    '093': '093',
    '094': '094',
    '095': '095',
    '096': '096',
    '097': '097',
    '088': '088',
    '098': '098',
    '089': '089',
    '099': '099',
    '086': '086',
  };
}

extension PhoneUtils on String {
  String formatPhoneVn({String prefix = '0'}) {
    var res = replaceAll(' ', '').replaceAll(RegExp(r'\D+'), '');
    if (res.length < 10 || res.length > 11) {
      return res;
    }
    if (res.substring(0, 2) == '84') {
      res = res.substring(2);
    }
    return res[0] != '0' ? prefix + res : res;
  }

  String convertPhone11to10() {
    var res = formatPhoneVn();
    if (res.length < 11) {
      return res;
    }

    final startPhone = res.substring(0, 4);
    if (CorePhoneUtil.PHONE_MAPPING[startPhone] != null) {
      res = CorePhoneUtil.PHONE_MAPPING[startPhone]! + res.substring(4, 11);
    }
    return res;
  }

  bool isCorrectPhoneNumber() =>
      isNotEmpty &&
      RegExp(
        r'^\d{10,11}$',
      ).hasMatch(this);
}
