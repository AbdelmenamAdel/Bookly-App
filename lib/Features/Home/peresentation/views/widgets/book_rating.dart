import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
    required this.rating,
    required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final num? rating;
  final int? count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
            size: 14, FontAwesomeIcons.solidStar, color: Color(0xffFFDD4F)),
        const SizedBox(width: 6.3),
        Text(rating.toString(), style: Styles.textStyle14),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text('($count)', style: Styles.textStyle14),
        )
      ],
    );
  }
}
