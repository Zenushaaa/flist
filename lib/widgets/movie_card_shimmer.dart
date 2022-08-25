import 'package:flutter/material.dart';

class MovieCardShimmer extends StatelessWidget {
  const MovieCardShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95,
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
              width: 100,
              height: 10,
              color: Colors.black.withOpacity(0.09),
            ),
          ),
        ],
      ),
    );
  }
}
