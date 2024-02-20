import 'package:bookly/Features/Home/peresentation/views/widgets/custom_List_view_item.dart';
import 'package:bookly/Features/Home/peresentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(
          asset: AppAssets.appLogo,
          icon: FontAwesomeIcons.magnifyingGlass,
        ),
        CustomListViewItem(),
      ],
    );
  }
}
