import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:search_address/theme/colors.dart';
import 'package:search_address/widgets/attr_address.dart';

class CardAddress extends StatelessWidget {
  final String cep;
  final String state;
  final String city;
  final String neighborhood;
  final String street;
  final Function onRemove;
  final Function onShare;

  const CardAddress({
    Key key,
    this.cep,
    this.state,
    this.city,
    this.neighborhood = "",
    this.street = "",
    this.onRemove,
    this.onShare,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableScrollActionPane(),
      actions: [
        IconSlideAction(
          caption: 'Compartilhar',
          color: Colors.green[50],
          icon: Icons.share,
          onTap: this.onShare,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          caption: 'Remover',
          color: corVermelhoBonito,
          icon: Icons.delete_forever_rounded,
          onTap: this.onRemove,
        ),
      ],
      child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: corCardAddress,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 3,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AttrAddress(
                    label: "CEP",
                    value: this.cep,
                  ),
                  AttrAddress(
                    label: "Estado",
                    value: this.state,
                  ),
                  AttrAddress(
                    label: "Cidade",
                    value: this.city,
                  ),
                  AttrAddress(
                    label: "Bairro",
                    value: this.neighborhood,
                  ),
                  AttrAddress(
                    label: "Rua",
                    value: this.street,
                  ),
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 3,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
