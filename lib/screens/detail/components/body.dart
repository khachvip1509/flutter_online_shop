import 'package:flutter/material.dart';
import 'package:onlineshopflutter/constants.dart';
import 'package:onlineshopflutter/screens/detail/components/producttitltwithimage.dart';

import '../../../models/product.dart';
import 'colorandsize.dart';

class BodyDetail extends StatelessWidget {
  final Product product;
  const BodyDetail({super.key,  required this.product});

    @override
  Widget build(BuildContext context) {
      Size size =MediaQuery.of(context).size;
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(//xep tu duoi len tren
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height*0.3),
                    padding: EdgeInsets.only(top:size.height*0.12,left: kDefautPadding, right: kDefautPadding),
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(24), topRight: Radius.circular(24))
                    ),
                    child: Column(
                      children: [
                        colorandsize(product: product)
                      ],
                    ),
                  ),
                 ProductTitleWithImage(product: product)
                ],
              ),
            ),

          ],
        ),
      );
  }
}
