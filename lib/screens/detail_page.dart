import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_elastic_drawer/components/appbar.dart';
import 'package:shop_app_elastic_drawer/constants/constants.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  State<DetailPage> createState() => _DetailPageState();
}

enum Sizes { XS, S, M, L, XL }
List<String> Size1 = ["XS", "S", "M", "L", "XL"];
String size1 = "M";

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
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
                padding: EdgeInsets.only(left: 30, right: 40, bottom: 30),
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      "Outlook",
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "Casual Sweater",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                        const Text(
                          "\$99",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Text(
                      Constants.aciklama,
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                    const Text(
                      "Choose Size",
                      style: TextStyle(fontSize: 24, color: Colors.black87),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                        Size1.length,
                        (index) => GestureDetector(
                          onTap: () {
                            size1 = Size1[index];
                            setState(() {
                              print(size1);
                            });
                          },
                          child: CircleAvatar(
                            child: Text(
                              Size1[index],
                              style: const TextStyle(color: Colors.black),
                            ),
                            minRadius: size.height * 0.034,
                            backgroundColor: size1 == Size1[index]
                                ? Colors.teal
                                : Colors.teal[50],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              print("fav");
                            });
                          },
                          child: CircleAvatar(
                            child: const Icon(
                              Icons.favorite_outline,
                              color: Colors.black,
                            ),
                            minRadius: size.height * 0.034,
                            backgroundColor: Colors.white70,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              print("add to cart");
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 30),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(16)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                  child: const Icon(
                                    Icons.shopping_bag_outlined,
                                    color: Colors.white70,
                                  ),
                                  minRadius: size.height * 0.025,
                                  backgroundColor: Colors.white24,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        color: Colors.teal,
      ),
    );
  }
}
