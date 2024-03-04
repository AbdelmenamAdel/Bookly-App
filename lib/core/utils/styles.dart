import 'package:bookly/constants.dart';
import 'package:flutter/cupertino.dart';

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    fontFamily: kGtsectrafine,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 18,
    fontFamily: kGtsectrafine,
    fontWeight: FontWeight.normal,
  );
  static const textStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}

const TextStyle textStyle = TextStyle();
