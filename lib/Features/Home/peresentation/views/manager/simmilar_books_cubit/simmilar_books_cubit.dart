import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'simmilar_books_state.dart';

class SimmilarBooksCubit extends Cubit<SimmilarBooksState> {
  SimmilarBooksCubit() : super(SimmilarBooksInitial());
}
