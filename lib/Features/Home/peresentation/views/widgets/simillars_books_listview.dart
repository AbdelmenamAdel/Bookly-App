import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'simillar_books_listview.dart';

class SimillarsBooksListView extends StatelessWidget {
  const SimillarsBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'You Can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(height: 20),
        const SimilarBooksListView(),
      ],
    );
  }
}
