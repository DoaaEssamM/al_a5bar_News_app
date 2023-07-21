import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {

  Function onDrawerSelected;
  DrawerWidget(this.onDrawerSelected);
  static int CATEGORIES=1;
  static int SETTINGS=2;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 35),
            color: Colors.green,
            alignment: Alignment.center,
            child: Text('News App!',style: TextStyle(
                fontSize: 30,color: Colors.white
            ),),
          ),
          InkWell(
            onTap: (){
              onDrawerSelected(CATEGORIES);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Categories',style: TextStyle(
                fontSize: 18,fontWeight:FontWeight.bold,color: Colors.black
              ),),
            ),
          ),
          InkWell(
            onTap: (){
              onDrawerSelected(SETTINGS);
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Settings',style: TextStyle(
                  fontSize: 18,fontWeight:FontWeight.bold, color: Colors.black
              ),),
            ),
          )
        ],
      ),
    );
  }
}
