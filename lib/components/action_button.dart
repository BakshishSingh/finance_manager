import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget icon;
  final Color? backgroundColor;
  const ActionButton({
    super.key,
    this.onPressed,
    this.backgroundColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      color: backgroundColor ?? Colors.blue,
      elevation: 4,
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
