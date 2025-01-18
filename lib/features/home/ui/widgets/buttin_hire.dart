import 'package:flutter/material.dart';

class ButtonHire extends StatefulWidget {
  const ButtonHire({
    super.key,
    required this.title,
    required this.onPressed,
  });
  final String title;
  final void Function() onPressed;

  @override
  State<ButtonHire> createState() => _ButtonHireState();
}

class _ButtonHireState extends State<ButtonHire> {
  bool _isHover = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      onHover: (value) {
        _isHover = value;
        setState(() {});
      },
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
