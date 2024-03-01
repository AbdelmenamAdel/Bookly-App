import 'package:bookly/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'books_detail_section.dart';
import 'custom_book_details_app_bar.dart';
import 'simillars_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 30),
                BooksDetailsSection(book: book),
                const Expanded(child: SizedBox(height: 40)),
                const SimillarsBooksListView(),
                const SizedBox(height: 35),
              ],
            ),
          ),
        )
      ],
    );
  }
}
