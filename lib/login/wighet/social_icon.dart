import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final bool isCustom;
  final VoidCallback? onTap;

  const SocialIconButton({
    super.key,
    required this.icon,
    required this.color,
    this.isCustom = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            icon,
            color: color,
            size: isCustom ? 12 : 32,
          ),
        ),
      ),
    );
  }
}