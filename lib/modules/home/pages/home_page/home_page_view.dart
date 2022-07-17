import 'package:flutter/material.dart';
import 'package:twitter_clone/modules/home/pages/home_page/widgets/list_data.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: const [
                HomePageViewListData(),
                Divider(color: Colors.black26),
              ],
            ),
          );
        }),
        itemCount: 20,
      ),
    );
  }
}
