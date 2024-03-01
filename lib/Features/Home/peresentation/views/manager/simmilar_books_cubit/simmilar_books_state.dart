part of 'simmilar_books_cubit.dart';

sealed class SimmilarBooksState extends Equatable {
  const SimmilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimmilarBooksInitial extends SimmilarBooksState {}

final class SimmilarBooksLoading extends SimmilarBooksState {}

final class SimmilarBooksSuccess extends SimmilarBooksState {
  final List<BookModel> books;

  const SimmilarBooksSuccess(this.books);
}

final class SimmilarBooksFailure extends SimmilarBooksState {
  final String errMessage;

  const SimmilarBooksFailure(this.errMessage);
}
