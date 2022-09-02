import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class itemCard extends StatelessWidget {
  final Product product;
  final Function()? press;


  const itemCard({
    Key? key, required this.product, required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(kDefautPadding),
            // height: 180,
            // width: 160,
            decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16)
            ),
            child: Image.asset(product.image??""),
          ),
          )
          ,
          Padding(padding: EdgeInsets.symmetric(vertical:kDefautPadding/4),
            child: Text(product.title??"" ,style: TextStyle(color: kTextLightColor),),),
          Text("\$${product.price}")
        ],

      ),
    );
  }
}
