import 'package:al_a5bar/models/category.dart';
import 'package:al_a5bar/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:al_a5bar/shared/network/remote/api_manager.dart';

import '../screens/categories_screen.dart';
import '../screens/drawerWidget.dart';
import '../screens/home_screen.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image:
        AssetImage('assets/images/pattern.png',
        ),
        fit: BoxFit.cover)
      ),
      child: Scaffold (
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.green,
          shape: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent
            ),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25)
                ,bottomLeft: Radius.circular(25)
            )
          ),
          title: Text('News'),
        ),
          drawer: DrawerWidget(onDrawerSelected),
          body:categoryData==null?
          CategoriesScreen(onCategorySelected):
          HomeScreen(categoryData!),
      ),
    );
  }

  CategoryData? categoryData=null;

  void onDrawerSelected(number){
    if(number==DrawerWidget.CATEGORIES){
      categoryData=null;

    }else if(number==DrawerWidget.SETTINGS){
      // open settings screen
    }
    setState(() {
      Navigator.pop(context);
    });
  }

  void onCategorySelected(category){
    categoryData=category;
    setState(() {

    });
  }
}
