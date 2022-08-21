import 'package:flist/models/movie.dart';
import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class Popularcard extends StatelessWidget {
  final Movie movie;
  const Popularcard(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
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
              child: Image.asset(
                movie.imageUrl!,
                width: 110,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            movie.title!,
            style: titleTextStyle.copyWith(fontSize: 12),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/icon_star.png',
                width: 16,
              ),
              const SizedBox(
                width: 4,
              ),
              Text.rich(
                TextSpan(
                  text: '${movie.rating!}',
                  style: titleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(
                      text: '/10',
                      style: titleTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
