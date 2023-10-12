import 'package:flutter/material.dart';
import 'package:flutter_newspaper_app_using_api/models/news_model.dart';
import 'package:flutter_newspaper_app_using_api/providers/news_provider.dart';
import 'package:flutter_newspaper_app_using_api/widgets/news_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NewsModel news = ref.watch(newsProvider).newsModel;
    bool isLoading = ref.watch(newsProvider).isLoading;

    return Scaffold(
      backgroundColor: const Color(0xffF8F9FD),
      body: SafeArea(
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: news.articles!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return NewsCard(article: news.articles![index]);
                  },
                )),
    );
  }
}
