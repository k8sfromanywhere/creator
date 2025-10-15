import 'package:flutter/material.dart';

final class Loader extends StatelessWidget {
  const Loader({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CircularProgressIndicator(color: Color(0xFF8E2DE2)),
          if (text != null) ...[
            SizedBox(height: 16),
            Text(text!, style: const TextStyle(color: Colors.white70)),
          ],
        ],
      ),
    );
  }
}
