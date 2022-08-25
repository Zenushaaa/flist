import 'package:flist/widgets/detail.dart';
import 'package:flutter/material.dart';

import '../theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            snap: true,
            title: Text(
              'Details Movie',
              style: titleTextStyle.copyWith(fontSize: 18, color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: blueColor,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.chevron_left_rounded),
            ),
          ),
        ],
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Detail(),
            )
          ],
        ),
      ),
    );
  }
}
