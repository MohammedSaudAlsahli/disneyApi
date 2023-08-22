import 'package:cached_network_image/cached_network_image.dart';
import 'package:disney_api/data/disney_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class CharCard extends StatelessWidget {
  const CharCard({super.key, required this.char});

  final Data char;

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse(char.sourceUrl ?? 'www.google.com'));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Container(
                height: 150,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: CachedNetworkImage(
                  imageUrl: char.imageUrl ??
                      'https://demofree.sirv.com/nope-not-here.jpg',
                  errorWidget: (context, url, s) {
                    return Container(color: Colors.red);
                  },
                  width: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Text(
                  '${char.name}',
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                    color: Color.fromARGB(255, 62, 62, 62),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
