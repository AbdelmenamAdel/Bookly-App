import 'package:bookly/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Search......',
            suffix1: const Opacity(
                opacity: .8, child: Icon(FontAwesomeIcons.magnifyingGlass)),
          ),
        ],
      ),
    );
  }
}
