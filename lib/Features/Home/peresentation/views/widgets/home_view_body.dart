import 'package:bookly/Features/Home/peresentation/views/widgets/best_seller_list_view.dart';
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
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                asset: AppAssets.appLogo,
                icon: FontAwesomeIcons.magnifyingGlass,
                onPressed: () {},
              ),
              const FeaturedBooksListView(),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text('Best Sellers', style: Styles.textStyle18),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
        const SliverFillRemaining(child: BestSellerListView())
      ],
    );
  }
}
