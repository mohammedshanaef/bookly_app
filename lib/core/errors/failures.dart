abstract class Failure {}

class ServerError extends Failure {
  final String message;

  ServerError({this.message = 'An Error Has Occured , Try Again Later'});
}
