import 'package:flutter/material.dart';
import 'package:search_address/settings/helpers.dart';
import 'package:search_address/theme/colors.dart';

class TextForm extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;

  const TextForm({Key key, this.controller, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      cursorColor: corVermelhoBonito,
      style: TextStyle(fontSize: 16),
      onChanged: this.onChanged,
      decoration: InputDecoration(
        hintText: maskCep,
        hintStyle: TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.grey[50],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: corVermelhoBonito,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: corVermelhoBonito,
          ),
        ),
      ),
    );
  }
}
