import 'package:bookly/Features/Search/data/repos/search_repo_implementation.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'search_book_state.dart';

class SearchBookCubit extends Cubit<SearchBookState> {
  SearchBookCubit(this.searchBook) : super(SearchBookInitial());
  final SearchRepoImplementation searchBook;
  Future<void> getSuggestions({required String dataSearch}) async {
    emit(SearchBookLoading());
    var result = await searchBook.featchSearchBook(search: dataSearch);
    result.fold(
      (failure) {
        emit(SearchBookFailure(failure.errMessage));
      },
      (books) {
        emit(SearchBookSuccess(books));
      },
    );
  }
}
