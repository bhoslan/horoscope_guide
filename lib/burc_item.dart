import 'package:flutter/material.dart';
import 'package:horoscope_guide/burc_detay.dart';
import 'package:horoscope_guide/burc_item.dart';
import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          onTap: () {
            Navigator.pushNamed(context, "/burcDetay",
                arguments: listelenenBurc);
          },
          leading: Image.asset(
            "images/${listelenenBurc.burcKucukResim}",
          ),
          title: Text(
            listelenenBurc.burcAdi,
            style: myTextStyle.headline5,
          ),
          subtitle: Text(
            listelenenBurc.burcTarihi,
            style: myTextStyle.subtitle1,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
