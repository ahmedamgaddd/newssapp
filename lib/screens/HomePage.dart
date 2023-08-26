import 'package:flutter/material.dart';
import 'package:newssapp/views/news_list_item.dart';

import '../models/article.dart';
import '../services/news_services.dart';

import 'Navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {
  dynamic future;
  NewsServices article = NewsServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navbar(),
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

      body:  FutureBuilder(
        future:article.getArticle(),
        builder:(BuildContext context,AsyncSnapshot<List<Article>>snapshot) {
          if (snapshot.hasData){
            List<Article> article = snapshot.data!;
            return ListView.builder(
              itemCount: article.length,
                itemBuilder: (context,index)=>newsListItem(article[index],context),
            );

          }else if (snapshot.hasError){
            return const Text('oops has error');

          }else{
           return const Center(
             child:  CircularProgressIndicator(),
           );
          }

        }
    )


    );

  }
}