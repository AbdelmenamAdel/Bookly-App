import 'package:bookly/Features/Home/peresentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/peresentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'simillar_books_listview.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .18;
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width),
                  child: const CustomBookImage(),
                ),
                const SizedBox(height: 43),
                const Text('The Jungle Book', style: Styles.textStyle30),
                const SizedBox(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Rudyard Kipling',
                    style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37),
                const BooksAction(),
                const Expanded(child: SizedBox(height: 40)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You Can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 20),
                const SimilarBooksListView(),
                const SizedBox(height: 35),
              ],
            ),
          ),
        )
      ],
    );
  }
}
