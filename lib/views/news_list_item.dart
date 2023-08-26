



import 'package:newssapp/screens/news_detail.dart';

import 'package:flutter/material.dart';

import '../models/article.dart';


  Widget newsListItem(Article article,BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context ,
            MaterialPageRoute(builder: (context)=> NewsDetail(article: article),),);
      },
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(article.urlImage), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(12)),

              ),
              const SizedBox(height: 8,),
              Container(
                padding:  const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.black,

                    borderRadius: BorderRadius.circular(12)),
                child: Text(article.title,
                style: const TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),

                ),

              ),
              const SizedBox(height: 8,),
              Container(
                padding:  const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.black,

                    borderRadius: BorderRadius.circular(12)),
                child: Text(article.author,
                  style: const TextStyle(color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),

                ),

              ),
              const SizedBox(height: 8,),
              Container(
                padding:  const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.black,

                    borderRadius: BorderRadius.circular(12)),
                child: Text(article.publishAt,
                  style: const TextStyle(color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),

                ),

              ),

            ],
          ),
        ),
      ),
    );
  }
