import 'package:flutter/material.dart';
import 'package:new_feed_app/pages/post_create_page.dart';

import '../view_items/home_page_view_items/home_page_view_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
          title: const Text('New Feed App'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PostCreatePage(),
            ));
          },
          child: const Icon(Icons.post_add),
        ),
        body: const SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              NewFeedItemView(),
              NewFeedItemView(),
              NewFeedItemView(),
              NewFeedItemView(),
              NewFeedItemView(),
              NewFeedItemView(),
              NewFeedItemView(),
            ],
          ),
        ));
  }
}
