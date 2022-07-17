import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageViewListData extends StatelessWidget {
  const HomePageViewListData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        circleAvatarImage(),
        Padding(
          padding: const EdgeInsets.only(left: 2),
          child: bodyColum(context),
        ),
        dotsText(context),
      ],
    );
  }

  Column bodyColum(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rowBody(context),
          textSized(context),
          const SizedBox(height: 5),
          cardImage(context),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: bottomBodySized(context),
          )
        ],
      );

  SizedBox bottomBodySized(BuildContext context) => SizedBox(
        width: context.width * 0.8,
        child: bottomBodyRow(),
      );

  Row bottomBodyRow() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.chat_bubble_outline),
          Icon(Icons.restart_alt),
          Icon(Icons.heart_broken),
          Icon(Icons.repeat),
        ],
      );

  Row rowBody(BuildContext context) {
    return Row(
      children: [
        nameText(context),
        tagText(context),
        dotDateText(context),
      ],
    );
  }

  Text dotsText(BuildContext context) => Text(
        '...',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 22,
            ),
      );

  Card cardImage(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.grey,
      child: cardSized(context),
    );
  }

  SizedBox cardSized(BuildContext context) {
    return SizedBox(
      height: 100,
      width: context.width * 0.8,
      child: Placeholder(),
    );
  }

  SizedBox textSized(BuildContext context) => SizedBox(
        height: 100,
        width: 300,
        child: textBody(context),
      );

  Text textBody(BuildContext context) => Text(
        'GitHub - endmr11/Flutter-Android-Bound-Service: Bound Service Java - Managing Android Bound Services in Flutter and transferring transactions to the interface with event channel. https://ift.tt/dtyiZCN https://ift.tt/qrTAcpn',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 15, color: Colors.black54),
      );

  Text nameText(BuildContext context) => Text(
        'r/FlutterDev',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
      );

  Text tagText(BuildContext context) => Text(
        ' @r/FlutterDev',
        style: Theme.of(context).textTheme.subtitle1,
      );

  Text dotDateText(BuildContext context) => Text(
        ' . 1h',
        style: Theme.of(context).textTheme.subtitle1,
      );

  CircleAvatar circleAvatarImage() => CircleAvatar(
        child: Image.network(
            'https://media-exp1.licdn.com/dms/image/C5603AQEssJZgvX7LgQ/profile-displayphoto-shrink_100_100/0/1600291704843?e=1663200000&v=beta&t=QUGZd85UhFkzk7AfU8G-oSltGoTZzQBwtqJKxciH-bU'),
      );
}
