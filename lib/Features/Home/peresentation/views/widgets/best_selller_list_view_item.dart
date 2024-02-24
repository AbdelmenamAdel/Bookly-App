import 'package:bookly/Features/Home/peresentation/views/book_details_view.dart';
import 'package:bookly/Features/Home/peresentation/views/widgets/book_rating.dart';
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * .5;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRoutes.bookDetailsView);
        },
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 2.5 / 4,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(AppAssets.test),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width,
                      child: Text(
                        'Harry Potter and the  Gobelt of Fire',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGtsectrafine),
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Text('J.K. Rowling'),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'19.99 $',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const BookRating()
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
