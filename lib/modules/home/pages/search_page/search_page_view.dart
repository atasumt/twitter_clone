import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_clone/modules/home/pages/search_page/widgets/search_top_image.dart';

class SearchPageView extends StatelessWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTopImage(),
          trendsText(context),
          SizedBox(
            height: context.height * 0.5,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return paddingTrend(context);
              }),
              itemCount: 10,
            ),
          ),
          showMoreText(context),
        ],
      ),
    );
  }

  Padding paddingTrend(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 10, left: 8, right: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                trendCountryText(context),
                trendNameText(context),
                trendCountText(context),
              ],
            ),
            dotsText(context),
          ],
        ),
      );

  Text showMoreText(BuildContext context) => Text('Show More', style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.blue));

  Text trendCountText(BuildContext context) => Text('4,291 Tweets', style: Theme.of(context).textTheme.subtitle1);

  Text trendNameText(BuildContext context) => Text(
        'Ölmemiş',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
      );

  Text trendCountryText(BuildContext context) => Text('Trending in Turkey', style: Theme.of(context).textTheme.subtitle1);

  Text dotsText(BuildContext context) => Text(
        '...',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 22,
            ),
      );

  Padding trendsText(BuildContext context) => Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          'Trends for you',
          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 25),
        ),
      );
}
