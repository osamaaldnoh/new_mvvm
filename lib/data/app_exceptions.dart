class AppExeptions implements Exception {
  final _message;
  final _perfix;
  AppExeptions([this._message, this._perfix]);

  String toString() {
    return '$_perfix $_message';
  }
}

class InternetException extends AppExeptions {
  InternetException([String? message]) : super(message, 'No Internet');
}

class RequestTimeOut extends AppExeptions {
  RequestTimeOut([String? message]) : super(message, 'Request Time Out');
}

class ServerException extends AppExeptions {
  ServerException([String? message]) : super(message, 'Internal server error');
}

class InValidUrlException extends AppExeptions {
  InValidUrlException([String? message]) : super(message, 'In Valid Url');
}

class FetchDataException extends AppExeptions {
  FetchDataException([String? message])
      : super(message, 'Error while communication');
}
