import 'package:flutter/material.dart';

final class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool filled;
  final bool disabled;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.filled = true,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = disabled
        ? Colors.white.withValues(alpha: 0.2)
        : filled
        ? const Color(0xFF8E2DE2)
        : Colors.white.withValues(alpha: 0.1);

    final textColor = disabled
        ? Colors.white54
        : filled
        ? Colors.white
        : Colors.white70;

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
