import 'package:flist/widgets/playlist_card.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class PopularPlaylist extends StatelessWidget {
  const PopularPlaylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        'Popular Playlist',
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
                    children: const [
                      PlaylistCard(),
                      PlaylistCard(),
                      PlaylistCard(),
                      PlaylistCard(),
                      PlaylistCard(),
                      PlaylistCard(),
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
