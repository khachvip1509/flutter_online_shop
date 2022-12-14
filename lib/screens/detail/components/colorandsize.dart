import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class colorandsize extends StatelessWidget {
  const colorandsize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child:  Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            Text("Color"),
            Row(
              children: [
                ColorDot(color: Color(0xFF356C95),isSelected: true,),
                ColorDot(color: Color(0xFFF8C078),),
                ColorDot(color: Color(0xFFA29B9B),)
              ],
            )

          ],))
        ,
        RichText(text: TextSpan(style:TextStyle(color: kTextColor),children: [
          TextSpan(text:"Size\n" ),
          TextSpan(text:"${product.size}cm",style: Theme.of(context).textTheme.headline4?.copyWith(fontWeight: FontWeight.bold) )
        ]))
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key, required this.color,  this.isSelected=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:kDefautPadding/4, right: kDefautPadding/2),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          shape:BoxShape.circle, border: Border.all(color: isSelected? color:Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color,
            shape: BoxShape.circle),
      ),
    );
  }
}
