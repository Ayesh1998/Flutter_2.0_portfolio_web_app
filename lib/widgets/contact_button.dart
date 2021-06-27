import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  final String buttonText;
  final Widget buttonIcon;
  final Function onPressedButton;
  const ContactButton({
    Key? key,
    required this.buttonText,
    required this.buttonIcon,
    required this.onPressedButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
            textStyle: TextStyle(color: Colors.black54),
            backgroundColor: Colors.amberAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.0))),
        onPressed: () => onPressedButton,
        icon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: buttonIcon,
        ),
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$buttonText',
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
