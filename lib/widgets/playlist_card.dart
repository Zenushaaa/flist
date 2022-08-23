import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
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
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/poster_1.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/poster_3.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/poster_4.jpg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/poster_5.jpg',
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            color: Colors.black.withOpacity(0.50),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(18),
                            child: Text(
                              '+ 10',
                              style: titleTextStyle.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Superhero',
                  style: titleTextStyle.copyWith(fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Flist',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/ic_like.png',
                      width: 12,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '123',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
