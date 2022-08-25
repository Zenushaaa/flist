import 'package:flist/models/movie.dart';
import 'package:flist/widgets/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/tv.dart';
import '../provider/movie_provider.dart';
import '../theme.dart';
import '../widgets/popular_card_tv.dart';

class Popularpage extends StatefulWidget {
  const Popularpage({Key? key}) : super(key: key);

  @override
  State<Popularpage> createState() => _PopularpageState();
}

class _PopularpageState extends State<Popularpage> {
  final ScrollController _scrollController = ScrollController();
  String? title;
  int pageCount = 1;

  @override
  void initState() {
    // Future.delayed(Duration.zero).then((_) {
    //   title = ModalRoute.of(context)!.settings.arguments as String;

    // });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // print('New data');
        if (title == 'Movie') {
          pageCount++;
          Provider.of<MovieProvider>(context, listen: false)
              .getPopularMovie(pageCount);
          setState(() {});
        } else {
          pageCount++;
          Provider.of<MovieProvider>(context, listen: false)
              .getPopularSeries(pageCount);
          setState(() {});
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    title = ModalRoute.of(context)!.settings.arguments as String;
    final movieProvider = Provider.of<MovieProvider>(context);
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            title: Text('Popular $title'),
            centerTitle: true,
            backgroundColor: blueColor,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.chevron_left_rounded),
            ),
          ),
        ],
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/Vector_3.png',
                width: 100,
              ),
            ),
            FutureBuilder(
              future: title == 'Movie'
                  ? movieProvider.getPopularMovie(pageCount)
                  : movieProvider.getPopularSeries(pageCount),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  if (title == 'Movie') {
                    List<Movie> data = snapshot.data as List<Movie>;

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        controller: _scrollController,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          childAspectRatio: 3 / 6,
                        ),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return Popularcard(data[index]);
                        },
                      ),
                    );
                  } else {
                    List<Tv> data = snapshot.data as List<Tv>;

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: GridView.builder(
                        controller: _scrollController,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          childAspectRatio: 3 / 6,
                        ),
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return PopularCardTv(data[index]);
                        },
                      ),
                    );
                  }
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
