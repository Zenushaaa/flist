import 'package:flist/models/movie.dart';
import 'package:flist/widgets/movie_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/movie_provider.dart';
import '../theme.dart';

class Popularpage extends StatelessWidget {
  const Popularpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = ModalRoute.of(context)!.settings.arguments as String;
    final movieProvider = Provider.of<MovieProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/Vector_2.png',
                    width: 100,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/images/Vector_3.png',
                    width: 100,
                  ),
                )
              ],
            ),
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                    left: 24,
                    right: 24,
                    bottom: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(
                          'assets/images/btBack.png',
                          width: 32,
                        ),
                      ),
                      Text(
                        'Popular $title',
                        style: titleTextStyle.copyWith(fontSize: 18),
                      ),
                      const SizedBox(
                        width: 32,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MovieCard(
                            Movie(
                              id: 7,
                              backdrop: 'assets/images/poster_7.jpg',
                              rating: 8.4,
                              title: 'Stranger Things: Season 4',
                            ),
                          ),
                          MovieCard(
                            Movie(
                              id: 6,
                              backdrop: 'assets/images/poster_6.jpg',
                              rating: 8.4,
                              title: 'Money Heist',
                            ),
                          ),
                          MovieCard(
                            Movie(
                              id: 7,
                              backdrop: 'assets/images/poster_5.jpg',
                              rating: 8.4,
                              title: 'The Walking Dead',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MovieCard(
                            Movie(
                              id: 7,
                              backdrop: 'assets/images/poster_7.jpg',
                              rating: 8.4,
                              title: 'Stranger Things: Season 4',
                            ),
                          ),
                          MovieCard(
                            Movie(
                              id: 6,
                              backdrop: 'assets/images/poster_6.jpg',
                              rating: 8.4,
                              title: 'Money Heist',
                            ),
                          ),
                          MovieCard(
                            Movie(
                              id: 7,
                              backdrop: 'assets/images/poster_5.jpg',
                              rating: 8.4,
                              title: 'The Walking Dead',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MovieCard(
                            Movie(
                              id: 7,
                              backdrop: 'assets/images/poster_7.jpg',
                              rating: 8.4,
                              title: 'Stranger Things: Season 4',
                            ),
                          ),
                          MovieCard(
                            Movie(
                              id: 6,
                              backdrop: 'assets/images/poster_6.jpg',
                              rating: 8.4,
                              title: 'Money Heist',
                            ),
                          ),
                          MovieCard(
                            Movie(
                              id: 7,
                              backdrop: 'assets/images/poster_5.jpg',
                              rating: 8.4,
                              title: 'The Walking Dead',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
