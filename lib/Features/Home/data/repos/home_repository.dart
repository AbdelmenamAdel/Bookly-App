import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
