import 'package:flist/theme.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/movie.dart';

class Videocard extends StatelessWidget {
  final Movie movie;
  const Videocard(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(String _url) async {
      final Uri url = Uri.parse(_url);
      if (await canLaunchUrl(url)) {
        launchUrl(url);
      }
    }

    return Container(
      height: 154,
      width: 268,
      margin: const EdgeInsets.only(
        right: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF0B3A4A).withOpacity(0.35),
                  offset: const Offset(4, 4),
                  blurRadius: 4,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.asset(
                    movie.imageUrl!,
                    width: 268,
                    height: 129,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 129,
                    width: 268,
                    color: Colors.black.withOpacity(0.25),
                  ),
                  InkWell(
                    onTap: () => _launchUrl(movie.videoUrl!),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 46, horizontal: 115),
                        child: Image.asset(
                          'assets/images/ic_play_circle.png',
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title!,
                    style: titleTextStyle.copyWith(fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'April 2023',
                    style: subTitleTextStyle.copyWith(fontSize: 10),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chevron_right_outlined),
              )
            ],
          ),
        ],
      ),
    );
  }
}
