import 'package:flutter/material.dart';
import 'package:newsappflutter/Provider/newsprovide.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
      ),
      body: Consumer(builder: (context, NewsProvider provider, child) {
        provider.getAll();
        if (provider.news.isEmpty) {
          provider.getAll();
          return const CircularProgressIndicator();
        }
        return ListView.separated(
            itemBuilder: (context, index) => newsItemComponent(
              provider.news[index].title,
              provider.news[index].url,
              provider.news[index].publishedAt,
              context,
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: 10);
      }),
    );
  }
}