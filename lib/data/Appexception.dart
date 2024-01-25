class AppException implements Exception {
  final _message;
  final _prefix;
  AppException([this._message, this._prefix]);

  String toString() {
    return '$_prefix $_message';
  }
}

class FetchException extends AppException {
  FetchException([String? message]) : super(message, 'Eorrr to comminucation');
}

class BadRequestexception extends AppException {
  BadRequestexception([String? message]) : super(message, 'Invild Request');
}

class unauthexception extends AppException {
  unauthexception([String? message]) : super(message, 'unauthrice Request');
}

class InvildinputException extends AppException {
  InvildinputException([String? message]) : super(message, 'Invild input');
}
