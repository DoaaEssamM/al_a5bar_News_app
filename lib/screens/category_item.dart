import 'package:al_a5bar/models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {

  CategoryData categoryData;
  int index;
  CategoryItem(this.categoryData,this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: categoryData.color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25) ,topRight: Radius.circular(25),
          bottomLeft:index.isEven?Radius.circular(25) :Radius.zero,
            bottomRight:index.isOdd?Radius.circular(25) :Radius.zero
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10,),
          Image.asset(categoryData.images,
          height: 100,),
          Expanded(
            child: Container(

              alignment: Alignment.center,
              child: Text  (categoryData.title,style:
              TextStyle(fontSize: 22,
              color: Colors.white,fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}
