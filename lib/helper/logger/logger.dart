import 'package:logger/logger.dart';

Logger _logger = Logger();
const _defaultPrintLength = 1020;

List<String> _splitMessage(dynamic message) {
  final result = <String>[];
  if (message == null || message.toString().length <= _defaultPrintLength) {
    result.add(message.toString());
  } else {
    final log = message.toString();
    var start = 0;
    var endIndex = _defaultPrintLength;
    final logLength = log.length;
    var tmpLogLength = log.length;
    while (endIndex < logLength) {
      result.add(log.substring(start, endIndex));
      endIndex += _defaultPrintLength;
      start += _defaultPrintLength;
      tmpLogLength -= _defaultPrintLength;
    }
    if (tmpLogLength > 0) {
      result.add(log.substring(start, logLength));
    }
  }
  return result;
}

void logV(dynamic message, [dynamic error, StackTrace? stackTrace]) {
  _splitMessage(message).forEach((element) {
    _logger.v(element, error, stackTrace);
  });
}

/// Log a message at level [Level.debug].
void logD(dynamic message,
    [dynamic error, StackTrace? stackTrace, Object? parent]) {
  String? modifier;
  if (parent is String) {
    modifier = parent;
  } else {
    modifier = parent.runtimeType.toString();
  }
  _splitMessage(message).forEach((element) {
    _logger.d('$modifier\r\n$element', error, stackTrace);
  });
}

/// Log a message at level [Level.info].
void logI(dynamic message, [dynamic error, StackTrace? stackTrace]) {
  _splitMessage(message).forEach((element) {
    _logger.i(element, error, stackTrace);
  });
}

/// Log a message at level [Level.warning].
void logW(dynamic message, [dynamic error, StackTrace? stackTrace]) {
  _splitMessage(message).forEach((element) {
    _logger.w(element, error, stackTrace);
  });
}

/// Log a message at level [Level.error].
void logE(dynamic message, [dynamic error, StackTrace? stackTrace]) {
  _splitMessage(message).forEach((element) {
    _logger.e(element, error, stackTrace);
  });
}

/// Log a message at level [Level.wtf].
void logWtf(dynamic message, [dynamic error, StackTrace? stackTrace]) {
  _splitMessage(message).forEach((element) {
    _logger.wtf(element, error, stackTrace);
  });
}
