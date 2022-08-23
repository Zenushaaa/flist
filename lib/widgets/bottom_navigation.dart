import 'package:flist/Pages/home_page.dart';
import 'package:flist/Pages/playlist_page.dart';
import 'package:flist/Pages/profile_page.dart';
import 'package:flist/Pages/search_page.dart';
import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navigationBar() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black38.withOpacity(0.25),
                spreadRadius: 0,
                blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
          ),
          child: BottomNavigationBar(
            backgroundColor: backgroundColor,
            type: BottomNavigationBarType.fixed,
            elevation: 20,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/images/Home.png',
                    width: 24,
                    color: _currentIndex == 0 ? blueColor : greyColorNavbar,
                  ),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/images/Search.png',
                    width: 24,
                    color: _currentIndex == 1 ? blueColor : greyColorNavbar,
                  ),
                ),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/images/Library.png',
                    width: 24,
                    color: _currentIndex == 2 ? blueColor : greyColorNavbar,
                  ),
                ),
                label: 'Playlist',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: Image.asset(
                    'assets/images/User-profile.png',
                    width: 24,
                    color: _currentIndex == 3 ? blueColor : greyColorNavbar,
                  ),
                ),
                label: 'Profile',
              ),
            ],
            selectedItemColor: blueColor,
            selectedLabelStyle: labelTextStyle.copyWith(
              fontSize: 12,
              color: blueColor,
            ),
            showUnselectedLabels: true,
            unselectedLabelStyle: labelTextStyle.copyWith(
              fontSize: 12,
              color: greyColor,
            ),
            currentIndex: _currentIndex,
            onTap: (value) {
              setState(() {
                _currentIndex = value;
              });
            },
          ),
        ),
      );
    }

    Widget body() {
      switch (_currentIndex) {
        case 0:
          return const Homepage();
        case 1:
          return const Searchpage();
        case 2:
          return const Playlistpage();
        case 3:
          return const Profilepage();
        default:
          return const Homepage();
      }
    }

    return Scaffold(
      bottomNavigationBar: navigationBar(),
      body: body(),
    );
  }
}
