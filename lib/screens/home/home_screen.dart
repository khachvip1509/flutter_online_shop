import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshopflutter/constants.dart';
import 'package:onlineshopflutter/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("assets/icons/back.svg"),
      onPressed: (){
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