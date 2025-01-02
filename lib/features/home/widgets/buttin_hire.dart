
import 'package:flutter/material.dart';

class ButtonHire extends StatelessWidget {
  const ButtonHire({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: const WidgetStatePropertyAll(Colors.blueGrey),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: Text(title),
    );
  }
}
