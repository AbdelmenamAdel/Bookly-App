import 'package:bookly/Features/Home/peresentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            asset: AppAssets.appLogo,
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text('Best Sellers', style: Styles.titleMedium)
        ],
      ),
    );
  }
}
