import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'books_detail_section.dart';
import 'custom_book_details_app_bar.dart';
import 'simillars_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                SizedBox(height: 30),
                BooksDetailsSection(),
                Expanded(child: SizedBox(height: 40)),
                SimillarsBooksListView(),
                SizedBox(height: 35),
              ],
            ),
          ),
        )
      ],
    );
  }
}
