import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.asset, required this.icon, this.onPressed});
  final String asset;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30, top: 40, bottom: 40),
      child: Row(
        children: [
          Image.asset(asset, height: 20),
          const Spacer(),
          IconButton(
            onPressed: onPressed,
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
