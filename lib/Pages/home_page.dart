import 'package:flist/models/movie.dart';
import 'package:flist/theme.dart';
import 'package:flist/widgets/popular_card.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
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
      );
    }

    Widget popularMovie() {
      return Column(
        children: [
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: labelTextStyle.copyWith(
                      fontSize: 12,
                      color: blueColor,
                    ),
                  ),
                )
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
                Popularcard(
                  Movie(
                    id: 2,
                    imageUrl: 'assets/images/poster_2.jpg',
                    rating: 8.4,
                    title: 'Black Widow',
                  ),
                ),
                Popularcard(
                  Movie(
                    id: 3,
                    imageUrl: 'assets/images/poster_3.jpg',
                    rating: 8.4,
                    title: 'Thor: Love and Thunder',
                  ),
                ),
                Popularcard(
                  Movie(
                    id: 4,
                    imageUrl: 'assets/images/poster_4.jpg',
                    rating: 8.4,
                    title: 'Avengers: End Game',
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget popularSeries() {
      return Column(
        children: [
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: labelTextStyle.copyWith(
                      fontSize: 12,
                      color: blueColor,
                    ),
                  ),
                )
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
                    id: 7,
                    imageUrl: 'assets/images/poster_5.jpg',
                    rating: 8.4,
                    title: 'The Walking Dead',
                  ),
                ),
                Popularcard(
                  Movie(
                    id: 6,
                    imageUrl: 'assets/images/poster_6.jpg',
                    rating: 8.4,
                    title: 'Money Heist',
                  ),
                ),
                Popularcard(
                  Movie(
                    id: 7,
                    imageUrl: 'assets/images/poster_7.jpg',
                    rating: 8.4,
                    title: 'Stranger Things: Season 4',
                  ),
                ),
                Popularcard(
                  Movie(
                    id: 8,
                    imageUrl: 'assets/images/poster_8.jpg',
                    rating: 8.4,
                    title: 'Game of Thrones',
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/vector.png',
              width: MediaQuery.of(context).size.width,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 24,
                ),
                header(),
                const SizedBox(
                  height: 24,
                ),
                // NOTE: Poppular Movie
                popularMovie(),
                const SizedBox(
                  height: 24,
                ),
                popularSeries(),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
