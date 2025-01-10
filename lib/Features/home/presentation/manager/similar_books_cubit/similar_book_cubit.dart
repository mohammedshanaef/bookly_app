import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similar_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksCuibt extends Cubit<SimilarBooksState> {
  SimilarBooksCuibt(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: '');

    result.fold(
        (failure) => emit(
              SimilarBooksFailure(failure.errMessage),
            ),
        (books) => emit(
              SimilarBooksSuccess(books),
            ));
  }
}
