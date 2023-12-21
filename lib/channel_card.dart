import 'package:flutter/material.dart';
import 'package:myvioo_ui/video.dart';


class ChannelCard extends StatelessWidget {
  final Video video;
  const ChannelCard({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(10.0),
        child:Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(video.imagePath,height: 100,width: 100,fit: BoxFit.fill,),
            ),
            const SizedBox(width: 20,),
            Expanded(
                child: Text(
                  video.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
            )
          ],
        ),
      ),
    );
  }
}
