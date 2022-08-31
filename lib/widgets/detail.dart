import 'package:flist/theme.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: double.infinity,
              height: 195,
              decoration: BoxDecoration(
                color: greyColor,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF0B3A4A).withOpacity(0.35),
                    offset: const Offset(4, 4),
                    blurRadius: 4,
                  )
                ],
              ),
              child: Image.asset(
                'assets/images/poster_1.jpg',
                width: double.infinity,
                height: 195,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 160),
                  child: Image.asset(
                    'assets/images/ic_play_circle.png',
                    width: 38,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/poster_1.jpg',
                  height: 117,
                  width: 85,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thor: Love and Thunder',
                    style: titleTextStyle.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
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
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Image.asset(
                        'assets/images/time-icon.png',
                        width: 16,
                        color: const Color(0xFF565656),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '1h 39m',
                        style: labelTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Action',
                            style: labelTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Adventure',
                            style: labelTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: greyColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Fantasy',
                            style: labelTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Overview',
            style: titleTextStyle.copyWith(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'After his retirement is interrupted by Gorr the God Butcher, a galactic killer who seeks the extinction of the gods, Thor Odinson enlists the help of King Valkyrie, Korg, and ex-girlfriend Jane Foster, who now inexplicably wields Mjolnir as the Relatively Mighty Girl Thor. Together they embark upon a harrowing cosmic adventure to uncover the mystery of the God Butcher’s vengeance and stop him before it’s too late.',
            style: titleTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            'Cast',
            style: titleTextStyle.copyWith(fontSize: 14),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              const SizedBox(
                width: 24,
              ),
              Container(
                width: 120,
                height: 150,
                margin: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/profile_1.jpg',
                        width: 120,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Jhon Doe',
                      style: titleTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Korg / Old Kronan God (voice)',
                      style: titleTextStyle.copyWith(
                          fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 150,
                margin: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/profile_1.jpg',
                        width: 120,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Jhon Doe',
                      style: titleTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Korg / Old Kronan God (voice)',
                      style: titleTextStyle.copyWith(
                          fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 150,
                margin: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/profile_1.jpg',
                        width: 120,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Jhon Doe',
                      style: titleTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Korg / Old Kronan God (voice)',
                      style: titleTextStyle.copyWith(
                          fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              Container(
                width: 120,
                height: 150,
                margin: const EdgeInsets.only(right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/profile_1.jpg',
                        width: 120,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Jhon Doe',
                      style: titleTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Korg / Old Kronan God (voice)',
                      style: titleTextStyle.copyWith(
                          fontSize: 10, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
