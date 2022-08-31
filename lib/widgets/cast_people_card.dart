import 'package:flutter/material.dart';

import '../models/cast.dart';
import '../theme.dart';

class PeopleCard extends StatelessWidget {
  final Cast cast;
  const PeopleCard(this.cast, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 140,
            height: 120,
            margin: const EdgeInsets.only(right: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: greyColor,
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
                cast.imageUrl != null
                    ? 'https://image.tmdb.org/t/p/w500${cast.imageUrl}'
                    : 'https://joadre.com/wp-content/uploads/2019/02/no-image.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Flexible(
            child: Text(
              cast.name!,
              style: labelTextStyle.copyWith(fontSize: 12),
              overflow: TextOverflow.clip,
            ),
          ),
          Flexible(
            child: Text(
              cast.character!,
              style: subTitleTextStyle.copyWith(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
