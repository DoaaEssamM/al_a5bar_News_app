import 'package:al_a5bar/models/SourcesResponse.dart';
import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {

  Sources sources;
  bool isSelected;
  TabItem(this.sources,this.isSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4,horizontal: 12),
      decoration: BoxDecoration(
        color: isSelected?Colors.green:Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.green)
      ),
      child: Text(sources.name??"",style: TextStyle(
        fontSize: 16,
        color: isSelected?Colors.white:Colors.green
      ),),
    );
  }
}
