import 'package:flutter/material.dart';
import 'package:myvioo_ui/video.dart';


class EventCard1 extends StatelessWidget {
  final Video video;
  const EventCard1({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child:  Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Image.network(
                  video.imagePath,
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0.0),
                        Colors.black.withOpacity(0.8)
                      ]
                  ),
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
                child: Text(
                  video.title,
                  style: Theme.of(context).textTheme.bodySmall,
                  overflow: TextOverflow.fade,
                  maxLines: 1,
                ),
              )
              ]
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.2,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
