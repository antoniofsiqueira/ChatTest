import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    @required this.onPressed,
    this.title,
    this.colour,
    
  });
  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final MaterialButton materialButton = MaterialButton(
      onPressed:onPressed,
      minWidth: 200.0,
      height: 42.0,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: materialButton,
      ),
    );
  }
}
