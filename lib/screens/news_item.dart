import 'package:al_a5bar/models/NewsDataModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {

  Articles articles;
  NewsItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: articles.urlToImage??"",
              fit: BoxFit.fill,
              height: 180,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
                  color: Colors.green,
                ),
              ),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
          Text(articles.author??"",style: TextStyle(
            fontSize: 12,color: Colors.grey
          ),),
          Text(articles.title??"",style: TextStyle(
              fontSize: 16,color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          Text(articles.publishedAt?.substring(0,10)??"",
            textAlign: TextAlign.right,style: TextStyle(
              fontSize: 14,color: Colors.black
          ),),

        ],
      ),
    );
  }
}
