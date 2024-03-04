import 'package:bookly/Features/Home/peresentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/peresentation/views/widgets/custom_book_image.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * .6;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRoutes.bookDetailsView, extra: book);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookImage(
                  imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ''),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width,
                      child: Text(
                        book.volumeInfo.title!,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle16,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      book.volumeInfo.authors![0],
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle12,
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle14
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        BookRating(
                          count: book.volumeInfo.ratingsCount ?? 0,
                          rating: book.volumeInfo.averageRating ?? 0,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
