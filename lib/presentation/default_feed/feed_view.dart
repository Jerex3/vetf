import 'package:flutter/material.dart';
import 'package:vetapp/presentation/default_feed/widgets/feed_item.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder: (context, index) => const Align(alignment:Alignment.center, child: FeedItem()), separatorBuilder: (context, index) => const SizedBox(height: 25), itemCount: 10,);
  }
}