// import 'package:flist/widgets/detail.dart';
import 'package:flist/widgets/cast_people_card.dart';
import 'package:flist/widgets/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cast.dart';
import '../models/movie.dart';
import '../provider/movie_provider.dart';
import '../theme.dart';

class DetailPage extends StatelessWidget {
  final Movie movie;
  const DetailPage(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final movieProvider = Provider.of<MovieProvider>(context, listen: false);

    Widget movieVideo() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 195,
            color: greyColor,
            child: Image.network(
              'https://image.tmdb.org/t/p/w500${movie.backdrop}',
              width: double.infinity,
              height: 195,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 195,
            width: double.infinity,
            color: Colors.black.withOpacity(0.25),
          ),
          InkWell(
            onTap: () {
              print('klik play');
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 78),
                child: Image.asset(
                  'assets/images/ic_play_circle.png',
                  width: 40,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            padding: const EdgeInsets.only(top: 16),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Align(
              alignment: Alignment.topLeft,
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Image.asset(
                  'assets/images/btBack.png',
                  width: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget movieDetail(
      String title,
      String year,
      num rating,
      int runtime,
      String status,
      List genre,
      List episodeRunTime,
    ) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Container(
              width: 85,
              height: 117,
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
                  'https://image.tmdb.org/t/p/w500${movie.poster}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 16),
            SizedBox(
              height: 117,
              width: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      '$title | ${year.substring(0, 4)}',
                      style: titleTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/icon_star.png',
                          width: 16,
                        ),
                        const SizedBox(width: 4),
                        Text.rich(
                          TextSpan(
                            text: rating.toString().substring(0, 3),
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
                        const SizedBox(width: 8),
                        Image.asset(
                          'assets/images/time-icon.png',
                          width: 16,
                          color: Colors.grey[500],
                        ),
                        const SizedBox(width: 4),
                        Text(
                          runtime != 0
                              ? '${(runtime / 60).floor()}h ${runtime % 60}m'
                              : '${(episodeRunTime[0] / 60).floor()}h ${episodeRunTime[0] % 60}m',
                          style: titleTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Status : $status',
                      style: labelTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    flex: 1,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: genre.map((item) {
                        return Container(
                          margin: const EdgeInsets.only(right: 4),
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          decoration: BoxDecoration(
                            color: greyColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              item['name'],
                              style: labelTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget movieSummary(String summary) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overview',
              style: titleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              summary,
              style: subTitleTextStyle.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            )
          ],
        ),
      );
    }

    Widget movieCast() {
      return FutureBuilder(
        future: movieProvider.getCast(movie.id, movie.type),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Cast> data = snapshot.data as List<Cast>;
            int index = 0;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Cast',
                    style: titleTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  height: 180,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: data.map((item) {
                        index++;
                        return Container(
                          margin: EdgeInsets.only(left: index == 1 ? 24 : 0),
                          child: PeopleCard(item),
                        );
                      }).toList()),
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      );
    }

    Widget movieSimiliar() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Similar Movies',
              style: titleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 200,
            child: FutureBuilder(
              future: movieProvider.getSimiliar(movie.id, movie.type),
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
                        child: Container(
                          margin: const EdgeInsets.only(right: 24),
                          child: Popularcard(item),
                        ),
                      );
                    }).toList(),
                  );
                } else {
                  return Container();
                }
              },
            ),
          ),
        ],
      );
    }

    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: movieProvider.getDetails(movie.id, movie.type),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              Movie data = snapshot.data as Movie;

              return SingleChildScrollView(
                child: Column(
                  children: [
                    movieVideo(),
                    const SizedBox(height: 20),
                    movieDetail(
                        data.title!,
                        data.releaseDate!,
                        data.rating!,
                        data.runtime!,
                        data.status!,
                        data.genres!,
                        data.episodeRuntime!),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    const SizedBox(height: 10),
                    movieSummary(data.summary!),
                    const SizedBox(height: 20),
                    movieCast(),
                    const SizedBox(height: 20),
                    movieSimiliar(),
                    const SizedBox(height: 20),
                  ],
                ),
              );
            } else {}
            return Container();
          },
        ),
      ),
    );
  }
}
