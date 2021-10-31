import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_elastic_drawer/components/appbar.dart';
import 'package:shop_app_elastic_drawer/components/info_card.dart';

import '../components/body.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        color: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAppBar(
              func: () {
                print("back");
              },
            ),
            Body(
              size: size,
            )
          ],
        ),
      ),
    );
  }
}
