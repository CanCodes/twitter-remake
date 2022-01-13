import 'package:flutter/material.dart';
import 'package:twitter_remake/components/tweet.dart';
import '../layouts/main.dart';
import 'dart:math';

final _random = new Random();

class User {
  final String name;
  final String tag;
  final String pfp;
  final bool? verified;
  User(this.name, this.tag, this.pfp, {this.verified = false});
}

final List<User> users = [
  User("Can", "can", "https://canerdal.com/pfp.png", verified: true),
  User("Eri", "eri",
      "https://cdn.discordapp.com/avatars/187316528100802560/a_406280c7d6b01af33aad1256e10d8db6.gif"),
  User("Eggsy", "eggsy",
      "https://cdn.discordapp.com/avatars/162969778699501569/a_77740f089585c5f41bd04b8f4267cc60.gif"),
  User("Kerim", "merloss",
      "https://cdn.discordapp.com/avatars/489811754411491328/f5db3779ab1b90eaa93cd09dba96b335.png"),
  User("Tarık", "tarikdev",
      "https://cdn.discordapp.com/avatars/474537652943847444/8b6f9f82e20398bd49258ce814e09d0b.png"),
  User("Kenan", "kenaga",
      "https://cdn.discordapp.com/avatars/334000664130617345/86ef1ca08715332530ee47190f23c2e5.png"),
];
const tweets = [
  'I love Flutter!',
  'What is up with this twitter redesign?',
  'Hey! It\'s Saturday my dudes!',
  'Have you guys seen the news?!!',
  'Covid 😷',
  'Wow This redesign looks nice ngl.',
  'I am pregnant!',
  'My wife is pregnant!',
  'I think I got my bestfriends wife pregnant...'
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: "Home",
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            User user = users[_random.nextInt(users.length)];
            String tweet = tweets[_random.nextInt(tweets.length)];
            return Tweet(
              authorName: user.name,
              authorTag: user.tag,
              authorPfp: user.pfp,
              tweet: tweet,
            );
          },
        ));
  }
}
