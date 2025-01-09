import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/Features/home/presentation/manager/newest_books_cubit/newest_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInital());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBook() async {
    emit(NewestBooksInital());
    var result = await homeRepo.fetchNewestBooks();

    result.fold(
        (failure) => emit(
              NewestBooksFailure(failure.errMessage),
            ),
        (books) => emit(
              NewestBooksSuccess(books),
            ));
  }
}
