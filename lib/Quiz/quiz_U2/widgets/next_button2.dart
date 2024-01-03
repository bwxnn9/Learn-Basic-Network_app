import 'package:flutter/material.dart';

class RectangularButton2 extends StatelessWidget {
  const RectangularButton2({
    super.key,
    required this.onPressed,
    required this.label,
  });

  final VoidCallback? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: Card(
          color: onPressed != null ? Colors.white : null,
          child: Center(
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ),
    );
  }
}