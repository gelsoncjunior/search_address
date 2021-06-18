import 'package:flutter/material.dart';
import 'package:search_address/theme/colors.dart';

class BtnCleanAll extends StatelessWidget {
  final Function onTap;

  const BtnCleanAll({Key key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: corVermelhoBonito,
        ),
        child: Center(
          child: Text(
            "Limpar tudo",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
