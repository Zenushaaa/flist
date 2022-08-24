import 'package:flutter/material.dart';

class VideoCardShimmer extends StatelessWidget {
  const VideoCardShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      width: 268,
      margin: const EdgeInsets.only(
        right: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 120,
              width: 268,
              color: Colors.black.withOpacity(0.09),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 10,
                      width: 150,
                      color: Colors.black.withOpacity(0.09),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 10,
                      width: 75,
                      color: Colors.black.withOpacity(0.09),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
