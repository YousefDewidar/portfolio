import 'package:flutter/material.dart';

class ButtonHire extends StatefulWidget {
  const ButtonHire({
    super.key,
    required this.title,
  });
  final String title;

  @override
  State<ButtonHire> createState() => _ButtonHireState();
}

class _ButtonHireState extends State<ButtonHire> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onHover: (value) {
        _isHover = value;
        setState(() {});
      },
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(_isHover
            ? const Color.fromARGB(255, 75, 97, 108)
            : Colors.blueGrey),
        foregroundColor: const WidgetStatePropertyAll(Colors.white),
        shape: WidgetStatePropertyAll(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      child: Text(widget.title),
    );
  }
}
