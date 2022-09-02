import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';


class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: kDefautPadding),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Aristocratic Hand bag",style: TextStyle(color: Colors.white),),
          Text(product.title??"",style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white,fontWeight: FontWeight.bold),),

          Row(
            children: [
              RichText(
                text: TextSpan(
                    children:[
                      TextSpan(text: "Price\n"),
                      TextSpan(text:"\$${product.price}",
                          style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.white,fontWeight: FontWeight.bold)),
                      TextSpan(text: " \n"),
                      TextSpan(text: " \n"),
                      TextSpan(text: " \n"),
                      TextSpan(text: " \n"),
                      TextSpan(text: " \n"),
                      TextSpan(text: " \n"),
                    ] ),
              ),
              SizedBox(width: kDefautPadding,),
              Expanded(child: Image.asset(product.image??"",
                fit: BoxFit.fill,))
            ],
          )
        ],
      ),);
  }
}
