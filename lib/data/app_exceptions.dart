class AppException implements Exception {
  late final _message;
  late final _prefix;

  AppException([this._message, this._prefix]);

  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super(message, 'Invalid Request');
}


class UnAuthorizedRequestException extends AppException {
  UnAuthorizedRequestException ([String? message]) : super(message, 'Unauthorized  Request');
}