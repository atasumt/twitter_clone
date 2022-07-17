import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationsPageView extends StatelessWidget {
  const NotificationsPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height,
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, size: 40, color: Colors.purple),
                        circleAvatarImage(),
                      ],
                    ),
                    dotsText(context),
                  ],
                ),
                SizedBox(height: 8),
                commentText(context),
                SizedBox(height: 8),
                commentSubText(context),
                Divider(color: Colors.black26),
              ],
            ),
          );
        }),
        itemCount: 30,
      ),
    );
  }

  Text commentSubText(BuildContext context) => Text('ne video çektim beeee', style: Theme.of(context).textTheme.subtitle1);

  Text commentText(BuildContext context) => Text(
        'Recomemended For You',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 15,
            ),
      );

  Text dotsText(BuildContext context) => Text(
        '...',
        style: Theme.of(context).textTheme.subtitle1!.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 22,
            ),
      );

  CircleAvatar circleAvatarImage() => CircleAvatar(
        child: Image.network(
            'https://media-exp1.licdn.com/dms/image/C5603AQEssJZgvX7LgQ/profile-displayphoto-shrink_100_100/0/1600291704843?e=1663200000&v=beta&t=QUGZd85UhFkzk7AfU8G-oSltGoTZzQBwtqJKxciH-bU'),
      );
}
