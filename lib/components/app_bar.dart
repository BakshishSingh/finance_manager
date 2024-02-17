import 'package:flutter/material.dart';

class FAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const FAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      // shadowColor: Colors.black,
      // backgroundColor: const Color(0xff7F3DFF),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
