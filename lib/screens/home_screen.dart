import 'package:al_a5bar/models/category.dart';
import 'package:al_a5bar/screens/tab_controller.dart';
import 'package:flutter/material.dart';
import '../models/SourcesResponse.dart';
import '../shared/network/remote/api_manager.dart';

class HomeScreen extends StatelessWidget {

 CategoryData categoryData;
 HomeScreen(this.categoryData);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourcesResponse>(
      future: ApiManager.getSources(categoryData.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(
            child: Column(
              children: [
                Text('Something went wrong'),
                TextButton(onPressed: () {}, child: Text('Try Again'))
              ],
            ),
          );
        }
        if (snapshot.data?.status != 'ok') {
          return Column(
            children: [
              Text(snapshot.data?.message ?? "Error"),
              TextButton(onPressed: () {}, child: Text('Try Again'))
            ],
          );
        }
        var sources = snapshot.data?.sources ?? [];

        return TabControllerScreen(sources);
      },
    );
  }
}
