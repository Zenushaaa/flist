import 'package:flist/models/movie.dart';
import 'package:flist/theme.dart';
import 'package:flist/widgets/popular_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello,\nAlex Espagaro",
                  style: titleTextStyle.copyWith(fontSize: 22),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Container(
                    width: 68,
                    height: 68,
                    color: greyColor,
                    child: Image.asset(
                      'assets/images/profile_1.jpg',
                      width: 68,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // NOTE: Poppular Movie
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Text(
                  'Popular Movie',
                  style: labelTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'more',
                  style: labelTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 24,
                ),
                Popularcard(
                  Movie(
                    id: 1,
                    imageUrl: 'assets/images/poster_1.jpg',
                    rating: 8.4,
                    title: 'Mulan',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Popularcard(
                  Movie(
                    id: 2,
                    imageUrl: 'assets/images/poster_2.jpg',
                    rating: 8.4,
                    title: 'Black Widow',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Popularcard(
                  Movie(
                    id: 3,
                    imageUrl: 'assets/images/poster_3.jpg',
                    rating: 8.4,
                    title: 'Thor: Love and Thunder',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Popularcard(
                  Movie(
                    id: 4,
                    imageUrl: 'assets/images/poster_4.jpg',
                    rating: 8.4,
                    title: 'Avengers: End Game',
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Text(
                  'Popular Series',
                  style: labelTextStyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'more',
                  style: labelTextStyle.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 24,
                ),
                Popularcard(
                  Movie(
                    id: 5,
                    imageUrl: 'assets/images/poster_5.jpg',
                    rating: 8.4,
                    title: 'The Walking Dead: Season 1',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Popularcard(
                  Movie(
                    id: 6,
                    imageUrl: 'assets/images/poster_6.jpg',
                    rating: 8.4,
                    title: 'Money Heist',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Popularcard(
                  Movie(
                    id: 7,
                    imageUrl: 'assets/images/poster_7.jpg',
                    rating: 8.4,
                    title: 'Stranger Things: Season 4',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Popularcard(
                  Movie(
                    id: 8,
                    imageUrl: 'assets/images/poster_8.jpg',
                    rating: 8.4,
                    title: 'Game of Thrones',
                  ),
                ),
                const SizedBox(
                  width: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
