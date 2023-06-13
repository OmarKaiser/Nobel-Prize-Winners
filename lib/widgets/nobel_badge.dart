import 'package:flutter/material.dart';

class NobelBadge extends StatelessWidget {
  final String text;
  const NobelBadge({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
        color: Colors.white.withOpacity(0.5),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
