import 'package:bookly/core/widgets/custom_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> lunchCustomUrl(BuildContext context, String? url) async {
  if (url != null) {
    Uri Url = Uri.parse(url);
    if (await canLaunchUrl(Url)) {
      await launchUrl(Url);
    } else {
      snackBar(context, url);
    }
  }
}
