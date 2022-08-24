import 'package:flist/models/movie.dart';
import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class PopularCardShimmer extends StatelessWidget {
  const PopularCardShimmer({Key? key}) : super(key: key);

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
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 110,
              height: 150,
              color: Colors.black.withOpacity(0.09),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 100,
              height: 10,
              color: Colors.black.withOpacity(0.09),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 50,
              height: 10,
              color: Colors.black.withOpacity(0.09),
            ),
          ),
        ],
      ),
    );
  }
}
