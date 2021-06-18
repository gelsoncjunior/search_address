import 'package:flutter/material.dart';
import 'package:search_address/theme/colors.dart';

class Btn extends StatelessWidget {
  final Function onTap;
  final bool enable;

  const Btn({
    Key key,
    this.onTap,
    this.enable: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.enable ? this.onTap : () => {},
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: this.enable ? 60 : 50,
        width: this.enable ? 60 : 50,
        decoration: BoxDecoration(
          color: this.enable ? corVermelhoBonito : corQuandoEstouTriste,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Center(
          child: Icon(
            Icons.search,
            size: 30,
            color: Colors.grey[50],
          ),
        ),
      ),
    );
  }
}
