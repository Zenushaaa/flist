import 'dart:math';

import 'package:flist/models/genre.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class CategoryCard extends StatelessWidget {
  final Genre genre;
  const CategoryCard(this.genre, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                offset: const Offset(0, 4),
                blurRadius: 4,
              )
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/poster_${Random().nextInt(8) + 1}.jpg',
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
        InkWell(
          onTap: () => print(genre.id),
          child: SizedBox(
            width: 96,
            height: 66,
            child: Center(
              child: Text(
                genre.name!,
                style: titleTextStyle.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
