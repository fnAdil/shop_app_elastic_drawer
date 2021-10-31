import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.size,
    required this.func,
  }) : super(
          key: key,
        );
  final Size size;
  final void Function() func;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white70, borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 20,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal[200],
                  borderRadius: BorderRadius.circular(20)),
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assets/images/d.png"),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Casual Sweater",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                // ignore: prefer_const_constructors
                Text(
                  "Outlook",
                  // ignore: prefer_const_constructors
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Text(
                  "\$99",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
