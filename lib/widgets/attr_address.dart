import 'package:flutter/material.dart';

class AttrAddress extends StatelessWidget {
  final String label;
  final String value;

  const AttrAddress({
    Key key,
    this.label = "",
    this.value = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${this.label}: ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          this.value,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
