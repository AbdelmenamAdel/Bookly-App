import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'simmilar_books_state.dart';

class SimmilarBooksCubit extends Cubit<SimmilarBooksState> {
  SimmilarBooksCubit(this.homeRepo) : super(SimmilarBooksInitial());
  final HomeRepository homeRepo;
  Future<void> fetchSimmilarBooks({required String category}) async {
    emit(SimmilarBooksLoading());
    var result = await homeRepo.fetchSimmillarBooks(category: category);
    result.fold((failure) {
      emit(SimmilarBooksFailure(failure.errMessage));
    }, (books) {
      emit(SimmilarBooksSuccess(books));
    });
  }
}
