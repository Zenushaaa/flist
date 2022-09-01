import 'package:flist/models/genre.dart';
import 'package:flist/provider/movie_provider.dart';
import 'package:flist/theme.dart';
import 'package:flist/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  State<Searchpage> createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  List<Genre> genres = [];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        Provider.of<MovieProvider>(context, listen: false).getGenre().then(
          (value) {
            setState(() {
              for (var element in value) {
                genres.add(element);
              }
            });
          },
        );
      },
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget searchInput() {
      return Stack(
        children: [
          Image.asset(
            'assets/images/vector.png',
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: TextFormField(
              style: labelTextStyle.copyWith(fontSize: 12),
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Image.asset(
                    'assets/images/Search.png',
                    width: 18,
                    color: const Color(0xFFA4A3A3),
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
                hintText: 'Search Movie, Series, or Playlist',
                hintStyle: labelTextStyle.copyWith(
                  fontSize: 12,
                  color: const Color(0xFFA4A3A3),
                ),
                filled: true,
                fillColor: greyColor,
                contentPadding: const EdgeInsets.only(
                  left: 16,
                  top: 8,
                  right: 16,
                  bottom: 8,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: greyColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: greyColor),
                ),
              ),
            ),
          ),
        ],
      );
    }

    Widget category() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Category',
              style: titleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  children: [
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(10),
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
                        child: Image.asset(
                          'assets/images/poster_4.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.45),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 96,
                      height: 66,
                      child: Center(
                        child: Text(
                          'Movie',
                          style: titleTextStyle.copyWith(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(10),
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
                        child: Image.asset(
                          'assets/images/poster_7.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.45),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 96,
                      height: 66,
                      child: Center(
                        child: Text(
                          'Series',
                          style: titleTextStyle.copyWith(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.09),
                        borderRadius: BorderRadius.circular(10),
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
                        child: Image.asset(
                          'assets/images/poster_6.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: 96,
                      height: 66,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.45),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      width: 96,
                      height: 66,
                      child: Center(
                        child: Text(
                          'Playlist',
                          style: titleTextStyle.copyWith(
                              fontSize: 12, color: Colors.white),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget genre() {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Genre',
              style: titleTextStyle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 12),
            GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 5,
                childAspectRatio: 8 / 6,
              ),
              itemCount: genres.length,
              itemBuilder: (context, index) {
                return CategoryCard(genres[index]);
              },
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                searchInput(),
                category(),
                const SizedBox(height: 24),
                genre(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
