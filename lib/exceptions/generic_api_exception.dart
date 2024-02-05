//make API exception class

class APIException implements Exception {
  const APIException(this.message);
  final String? message;
}
