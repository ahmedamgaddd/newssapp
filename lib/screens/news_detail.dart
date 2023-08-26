import 'package:flutter/material.dart';
import 'package:newssapp/models/article.dart';

class NewsDetail extends StatelessWidget {
  const NewsDetail({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        title: const Text('LINK DEVELOPMENT', textAlign: TextAlign.center),
        backgroundColor: const Color(0xFF000000),
      ),
      body:  Padding(padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              article.urlImage),
                        fit: BoxFit.cover,
                      ),

                    ),
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
              Text(article.description,
                style: const TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),

              ),


            ],

          ),
        ),
      ),

    );
  }
}
