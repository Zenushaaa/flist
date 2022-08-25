import 'package:flist/models/tv.dart';
import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class PopularCardTv extends StatelessWidget {
  final Tv tv;
  const PopularCardTv(this.tv, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
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
              child: Image.network(
                tv.poster != null
                    ? 'https://image.tmdb.org/t/p/w500${tv.poster}'
                    : 'https://joadre.com/wp-content/uploads/2019/02/no-image.jpg',
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
            tv.title!,
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
                  text: '${tv.rating}',
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
