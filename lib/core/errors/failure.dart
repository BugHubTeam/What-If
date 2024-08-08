abstract class Failure {
  String message;
  String? statusCode;

  Failure({
    required this.message,
    this.statusCode,
  });
}
