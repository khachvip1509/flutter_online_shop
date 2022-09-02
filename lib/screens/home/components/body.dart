import 'package:flutter/material.dart';
import 'package:onlineshopflutter/constants.dart';
import 'package:onlineshopflutter/models/product.dart';
import 'package:onlineshopflutter/screens/detail/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';
class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal:kDefautPadding ),
          child: Text(
            "Women",
            style: Theme.of(context).textTheme.headline5?.copyWith(fontWeight: FontWeight.bold)),),
        Category(),
        Expanded(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefautPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefautPadding,
                  crossAxisSpacing: kDefautPadding,
                  childAspectRatio: 0.75

              ),
              itemBuilder: (context,index)=>
                  itemCard(
                    product: products[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>DetailsScreen(product: products[index]))),)),
        ))
      ],
    );
  }
}