import 'package:flutter/material.dart';

void snackBar(BuildContext context, String url) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Cannot launch $url'),
    ),
  );
}
