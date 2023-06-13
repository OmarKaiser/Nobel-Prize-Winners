import 'package:flutter/material.dart';

class FeatureTitleText extends StatelessWidget {
  final String text;
  const FeatureTitleText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        "$text",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
