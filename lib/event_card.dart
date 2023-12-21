import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:myvioo_ui/video.dart';


class EventCard extends StatelessWidget {
  final Video video;
  const EventCard({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),

      ),
        child: Column(
          children: [
            ClipRRect(
             borderRadius: const BorderRadius.only(
               topRight: Radius.circular(10.0),
               topLeft: Radius.circular(10.0),
             ),
              child: Image.network(
                video.imagePath,
                height: MediaQuery.of(context).size.height*0.3,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10.0),
                  bottomLeft:  Radius.circular(10.0)
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(video.title,style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),),
                  const SizedBox(height: 5,),
                  Text(video.description,style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontStyle: FontStyle.normal,
                  ),
                  maxLines: 2,
                  overflow:TextOverflow.ellipsis),
                  const SizedBox(height: 5,),
                  Text(video.title,style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontStyle: FontStyle.italic,
                  ),),
                ],
              ),
            )
          ],
        ),
    );
  }
}
