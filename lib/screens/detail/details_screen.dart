import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../models/product.dart';

class DetailsScreen extends StatelessWidget{
  final Product product;

  const DetailsScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: product.color,
      appBar:buildAppBar(context) ,

    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg"),
        onPressed: (){
        Navigator.pop(context);
        },),
      actions: <Widget>[
        IconButton(onPressed: (){
        }, icon: SvgPicture.asset("assets/icons/search.svg",color: kTextColor,)),
        IconButton(onPressed: (){
        }, icon: SvgPicture.asset("assets/icons/cart.svg",color: kTextColor,)),
        SizedBox(width: kDefautPadding/2,)
      ],
    );
  }

}