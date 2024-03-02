import 'package:bookly/Features/Home/peresentation/views/widgets/book_list_view_item.dart';
import 'package:bookly/Features/Search/presentation/views/manager/search_book/search_book_cubit.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBookCubit, SearchBookState>(
      builder: (context, state) {
        if (state is SearchBookSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: BookListViewItem(book: state.books[index]),
            ),
          );
        } else if (state is SearchBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
