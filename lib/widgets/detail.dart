import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 370,
          width: 315,
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/poster_1.jpg',
              height: 370,
              width: 315,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Behind Her Eyes',
              style: titleTextStyle.copyWith(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'Director: Erik Richter Strand',
                  style: labelTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  '|',
                  style: labelTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Image.asset(
                  'assets/images/icon_star.png',
                  width: 16,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '7.6',
                  style: labelTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Container(
              height: 29,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: greyColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  'Drama',
                  style: titleTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              height: 29,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: greyColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 4,
                ),
                child: Text(
                  'Supernatural fiction',
                  style: titleTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: 1,
          color: Colors.black26,
        ),
        const SizedBox(
          height: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Storyline',
              style: titleTextStyle.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Jennifer Walters navigates the complicated life of a single, 30-something attorney who also happens to be a green 6-foot-7-inch superpowered hulk.',
              style: titleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.05,
              ),
            )
          ],
        ),
      ],
    );
  }
}
