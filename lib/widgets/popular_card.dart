import 'package:flist/models/movie.dart';
import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class Popularcard extends StatelessWidget {
  final Movie movie;
  const Popularcard(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              movie.imageUrl!,
              width: 120,
              height: 150,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 4,
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
