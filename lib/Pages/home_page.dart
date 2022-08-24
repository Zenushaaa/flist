import 'package:flist/models/movie.dart';
import 'package:flist/provider/movie_provider.dart';
import 'package:flist/theme.dart';
import 'package:flist/widgets/playlist_card.dart';
import 'package:flist/widgets/popular_card.dart';
import 'package:flist/widgets/popular_card_shimmer.dart';
import 'package:flist/widgets/popular_card_tv.dart';
import 'package:flist/widgets/video_card.dart';
import 'package:flist/widgets/video_card_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tv.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MovieProvider>(context);

    Widget header() {
      return Stack(
        children: [
          Image.asset(
            'assets/images/vector.png',
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 30,
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
        ],
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
                  onPressed: () => Navigator.pushNamed(context, '/popular',
                      arguments: 'Movie'),
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
            child: FutureBuilder(
              future: movieProvider.getPopularMovie(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Movie> data = snapshot.data as List<Movie>;
                  int index = 0;

                  return ListView(
                      scrollDirection: Axis.horizontal,
                      children: data.map((item) {
                        index++;
                        return Container(
                            margin: EdgeInsets.only(left: index == 1 ? 24 : 0),
                            child: Popularcard(item));
                      }).toList());
                } else {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      PopularCardShimmer(),
                      PopularCardShimmer(),
                      PopularCardShimmer(),
                      PopularCardShimmer(),
                    ],
                  );
                }
              },
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
                  onPressed: () => Navigator.pushNamed(context, '/popular',
                      arguments: 'Series'),
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
            child: FutureBuilder(
              future: movieProvider.getPopularSeries(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Tv> data = snapshot.data as List<Tv>;
                  int index = 0;

                  return ListView(
                      scrollDirection: Axis.horizontal,
                      children: data.map((item) {
                        index++;
                        return Container(
                            margin: EdgeInsets.only(left: index == 1 ? 24 : 0),
                            child: PopularCardTv(item));
                      }).toList());
                } else {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      PopularCardShimmer(),
                      PopularCardShimmer(),
                      PopularCardShimmer(),
                      PopularCardShimmer(),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      );
    }

    Widget upcomingMovie() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Text(
                  'Coming Soon',
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
            height: 180,
            child: FutureBuilder(
              future: movieProvider.getComingSoonMovie(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Movie> data = snapshot.data as List<Movie>;
                  int index = 0;
                  return ListView(
                      scrollDirection: Axis.horizontal,
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(left: index == 1 ? 24 : 0),
                          child: Videocard(item),
                        );
                      }).toList());
                } else {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      VideoCardShimmer(),
                      VideoCardShimmer(),
                      VideoCardShimmer()
                    ],
                  );
                }
              },
            ),
          ),
        ],
      );
    }

    Widget popularPlaylist() {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Row(
              children: [
                Text(
                  'Recommeded Playlist',
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
                  onPressed: () => Navigator.pushNamed(
                    context,
                    '/popularPlaylist',
                  ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: const [
                PlaylistCard(),
                PlaylistCard(),
                PlaylistCard(),
              ],
            ),
          )
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            const SizedBox(
              height: 24,
            ),
            upcomingMovie(),
            const SizedBox(
              height: 24,
            ),
            popularMovie(),
            const SizedBox(
              height: 24,
            ),
            popularSeries(),
            const SizedBox(
              height: 24,
            ),
            popularPlaylist(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
