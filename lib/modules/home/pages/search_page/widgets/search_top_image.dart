import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchTopImage extends StatelessWidget {
  const SearchTopImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      height: 200,
      child: stackImage(context),
    );
  }

  Stack stackImage(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          'https://picsum.photos/seed/picsum/200/300',
          fit: BoxFit.fill,
        ),
        positionedTextOne(context),
        AlignTextTwo(context),
      ],
    );
  }

  Align AlignTextTwo(BuildContext context) => Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Text(
            'TwitchCon returns for the first time since 2019',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
      );

  Positioned positionedTextOne(BuildContext context) => Positioned(
        top: 110,
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Text(
            'Gaming . LIVE',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(color: Colors.white),
          ),
        ),
      );
}
