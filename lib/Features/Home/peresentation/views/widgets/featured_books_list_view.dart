import 'package:flutter/material.dart';

import 'featured_List_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height * .3;
    return SizedBox(
      height: height,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 10),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: FeaturedListViewItem(),
        ),
      ),
    );
  }
}
