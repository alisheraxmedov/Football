import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextWidget extends StatelessWidget {
  final double size;
  final String text;
  final Color color;
  final FontWeight weight;
  final double spacing;

  const TextWidget({
    super.key,
    required this.text,
    required this.size,
    this.color = Colors.white,
    this.weight = FontWeight.normal,
    this.spacing = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        letterSpacing: spacing,
      ),
    );
  }
}
