import 'package:flutter/material.dart';
import 'package:onlineshopflutter/constants.dart';
//We need statefull widget for our categories
class Category extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CategoriesState();
  }
}

class _CategoriesState extends State<Category>{
  List<String> categories = ["Hand bag", "Jewelly","Footwear","Dresses"];
  // By defautl out first item will be selected
  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: EdgeInsets.symmetric(vertical: kDefautPadding),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context,index)=>buildCategory(index)),
      ),);
  }

  Widget buildCategory(int index) {
    return GestureDetector(onTap:(){
      setState(() {
        selectedIndex = index;
      });
    },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefautPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(categories[index],
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:selectedIndex==index? kTextColor:kTextLightColor ),),
            Container(
              margin:EdgeInsets.only(top: kDefautPadding/4),
              height: 2,width: 30,
              color:selectedIndex==index? Colors.black:Colors.transparent ,)
          ],
        ),),);
  }

}