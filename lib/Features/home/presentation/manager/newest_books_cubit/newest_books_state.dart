import 'package:bookly_app/Features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

abstract class NewestBooksState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class NewestBooksInital extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  NewestBooksFailure(this.errMessage);
}
