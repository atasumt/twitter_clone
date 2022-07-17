import 'package:flutter/material.dart';
import 'package:twitter_clone/global/desing/const_design.dart';

PreferredSizeWidget appBar(BuildContext context, int? search) {
  return PreferredSize(
    child: DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: search == 1 ? searchSized() : Text(search == 2 ? 'Notifications' : 'Home', style: Theme.of(context).textTheme.headline1),
        leading: leadingPad(),
        actions: [search == 1 || search == 2 ? actionsSearch() : actionsPad()],
        bottom: search == 2
            ? const TabBar(
                unselectedLabelColor: kBodyColor,
                labelColor: Colors.black,
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Mentions'),
                ],
              )
            : null,
      ),
    ),
    preferredSize: search == 2 ? Size.fromHeight(90) : Size.fromHeight(50),
  );
}

SizedBox searchSized() => SizedBox(
      height: 30,
      child: searchTextField(),
    );

TextField searchTextField() => TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        hintText: 'Search Twitter',
        contentPadding: EdgeInsets.only(top: 8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );

Padding actionsPad() => const Padding(
      padding: EdgeInsets.all(4.0),
      child: Icon(Icons.star, color: Colors.black45),
    );

Padding actionsSearch() => const Padding(
      padding: EdgeInsets.all(4.0),
      child: Icon(Icons.settings, color: Colors.black45),
    );

Padding leadingPad() => Padding(
      padding: const EdgeInsets.all(4.0),
      child: circleAvatarImage(),
    );

CircleAvatar circleAvatarImage() => CircleAvatar(
      child: Image.network(
          'https://media-exp1.licdn.com/dms/image/C5603AQEssJZgvX7LgQ/profile-displayphoto-shrink_100_100/0/1600291704843?e=1663200000&v=beta&t=QUGZd85UhFkzk7AfU8G-oSltGoTZzQBwtqJKxciH-bU'),
    );
