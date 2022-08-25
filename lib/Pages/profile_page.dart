import 'package:flutter/material.dart';

import '../theme.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: 86,
                  height: 86,
                  color: greyColor,
                  child: Image.asset(
                    'assets/images/profile_1.jpg',
                    width: 86,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Alex Espagaro',
              style: titleTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Alex@flist.com',
              style: subTitleTextStyle.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w300),
            ),
            // const SizedBox(
            //   height: 16,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 60),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Column(
            //         children: [
            //           Text(
            //             '6',
            //             style: titleTextStyle.copyWith(
            //               fontSize: 14,
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 4,
            //           ),
            //           Text(
            //             'Playlist',
            //             style: subTitleTextStyle.copyWith(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Text(
            //             '12',
            //             style: titleTextStyle.copyWith(
            //               fontSize: 14,
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 4,
            //           ),
            //           Text(
            //             'Followers',
            //             style: subTitleTextStyle.copyWith(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ],
            //       ),
            //       Column(
            //         children: [
            //           Text(
            //             '12',
            //             style: titleTextStyle.copyWith(
            //               fontSize: 14,
            //             ),
            //           ),
            //           const SizedBox(
            //             height: 4,
            //           ),
            //           Text(
            //             'Following',
            //             style: subTitleTextStyle.copyWith(
            //               fontSize: 12,
            //             ),
            //           ),
            //         ],
            //       )
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.account_circle_rounded,
                          size: 32,
                          color: blueColor,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Edit Profile',
                          style: titleTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.password_rounded,
                          size: 32,
                          color: blueColor,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Change password',
                          style: titleTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          size: 32,
                          color: blueColor,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Log Out',
                          style: titleTextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.chevron_right)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
