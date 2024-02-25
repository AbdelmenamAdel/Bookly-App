import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomTextFormField(
            hintText: 'Search......',
            suffix1: const Opacity(
              opacity: .8,
              child: Icon(FontAwesomeIcons.magnifyingGlass),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 30.0),
          child: Text('Search Result', style: Styles.textStyle18),
        ),
        const SizedBox(height: 16),
        const Expanded(
          child: SearchResultListView(),
        )
      ],
    );
  }
}
