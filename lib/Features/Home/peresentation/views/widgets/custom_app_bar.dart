import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.asset,
    required this.icon,
  });
  final String asset;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, bottom: 40),
      child: Row(
        children: [
          Image.asset(asset, height: 20),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.searchView);
            },
            icon: Icon(
              icon,
              size: 28,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
