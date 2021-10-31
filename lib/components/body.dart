import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_elastic_drawer/components/info_card.dart';
import 'package:shop_app_elastic_drawer/screens/detail_page.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 11,
            child: Image.asset("assets/images/d.png"),
          ),
          Expanded(
            flex: 3,
            child: InfoCard(
              size: size,
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DetailPage()),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
