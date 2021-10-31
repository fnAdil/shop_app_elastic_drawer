import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_elastic_drawer/components/appbar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
  }) : super(
          key: key,
        );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomAppBar(
                func: () {
                  Navigator.pop(context);
                },
                iconRight: const Icon(Icons.shopping_bag_outlined),
              ),
            ),
            Expanded(
              flex: 11,
              child: Container(
                color: Colors.teal,
                child: Image.asset("assets/images/d.png"),
              ),
            ),
            Expanded(
              flex: 12,
              child: Container(
                  decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              )),
            )
          ],
        ),
        color: Colors.teal,
      ),
    );
  }
}
