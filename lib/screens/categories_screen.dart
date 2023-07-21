import 'package:al_a5bar/models/category.dart';
import 'package:flutter/material.dart';

import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
 Function onCategorySelected;
 CategoriesScreen(this.onCategorySelected);
  @override
  Widget build(BuildContext context) {
    var categories=CategoryData.getCategories();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Center(
            child: Text("Pick your category of interest",style:
              TextStyle(fontSize: 25,color: Colors.black, fontWeight: FontWeight.w500),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14
                  ) ,
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: (){
                          onCategorySelected(categories[index]);
                        },
                        child: CategoryItem(categories[index],index));
                  },
              itemCount: categories.length,),
            ),
          )
        ],
      ),
    );
  }
}
