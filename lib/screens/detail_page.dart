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
        padding: EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          children: [
            CustomAppBar(
              func: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        color: Colors.teal,
      ),
    );
  }
}
