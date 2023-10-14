extension UrlUtil on String {
  String generateUrl(List<String> subPaths) {
    var pathL = [this, ...subPaths].map(
      (e) {
        return e.replaceAll(RegExp(r'^\/|\/$'), '');
      },
    ).join('/');
    pathL = pathL.replaceAll(RegExp(r'^\/|\/$'), '');
    final r = Uri.parse('///$pathL').toFilePath();
    return r;
  }

  String queryString(Map<String, dynamic>? json) {
    if (json == null) {
      return '';
    }
    Map<String, dynamic> queryParameters = json;
    // json.forEach((key, value) {
    //   if (value is bool?) {
    //     queryParameters[key] = [value.toString()];
    //   } else {
    //     queryParameters[key] = value;
    //   }
    // });
    Uri uri = Uri(queryParameters: queryParameters);

    String queryString = uri.query;

    return '$this?$queryString';
  }
}
