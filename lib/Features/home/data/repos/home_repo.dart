import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
Future <Either<Failure , List<String>>> fetchFeaturedBooks();
Future <Either<Failure , List<String>>> fetchBestSellerBooks();
}
