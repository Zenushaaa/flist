import 'package:flist/models/movie.dart';
import 'package:flist/widgets/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/movie_provider.dart';
import '../theme.dart';

class Popularpage extends StatefulWidget {
  const Popularpage({Key? key}) : super(key: key);

  @override
  State<Popularpage> createState() => _PopularpageState();
}

class _PopularpageState extends State<Popularpage> {
  final ScrollController _scrollController = ScrollController();
  String? title;
  int pageCount = 1;

  List<Movie> dataMovie = [];
  // ignore: prefer_typing_uninitialized_variables
  var movieProvider;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      movieProvider = Provider.of<MovieProvider>(context, listen: false);
      title = ModalRoute.of(context)!.settings.arguments as String;
      if (title == 'Movie') {
        movieProvider.getPopularMovie(pageCount).then((value) {
          setState(() {
            for (var data in value) {
              dataMovie.add(data);
            }
          });
        });
      } else {
        movieProvider.getPopularSeries(pageCount).then((value) {
          setState(() {
            for (var data in value) {
              dataMovie.add(data);
            }
          });
        });
      }
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (title == 'Movie') {
          pageCount++;
          movieProvider.getPopularMovie(pageCount).then((value) {
            setState(() {
              for (var data in value) {
                dataMovie.add(data);
              }
            });
          });
        } else {
          pageCount++;
          movieProvider.getPopularSeries(pageCount).then((value) {
            setState(() {
              for (var data in value) {
                dataMovie.add(data);
              }
            });
          });
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                controller: _scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 6,
                ),
                itemCount: dataMovie.length,
                itemBuilder: (context, index) {
                  return Popularcard(dataMovie[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
