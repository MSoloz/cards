import 'package:flutter/material.dart';
import 'package:myvioo_ui/channel_card.dart';
import 'package:myvioo_ui/data.dart';
import 'package:myvioo_ui/event_card.dart';

import 'event_card1.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildBuilderDelegate(
                childCount: videos.length,
                (context, index) {
                  return EventCard(video: videos[index],);
                },
              )),
          ],
        ),
      ),
    );
  }
}
