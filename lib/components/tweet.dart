import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_remake/components/twitter_icons_icons.dart';
import 'package:twitter_remake/constants.dart';

class Tweet extends StatefulWidget {
  Tweet(
      {Key? key,
      required this.authorName,
      required this.authorPfp,
      required this.authorTag,
      required this.tweet})
      : super(key: key);
  final String authorName;
  final String authorTag;
  final String authorPfp;
  final String tweet;

  @override
  _TweetState createState() => _TweetState();
}

class _TweetState extends State<Tweet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: NetworkImage(widget.authorPfp),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Constants.backGray,
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  )
                ],
                color: Constants.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.authorName,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Icon(
                      TwitterIcons.verified,
                      color: Constants.primaryColor,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "@" + widget.authorTag,
                      style: TextStyle(color: Constants.backDarkGray),
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  widget.tweet,
                  style: const TextStyle(fontSize: 18),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomRowIcon(icon: TwitterIcons.comment),
                    BottomRowIcon(icon: TwitterIcons.retweet),
                    BottomRowIcon(icon: TwitterIcons.like),
                    BottomRowIcon(icon: TwitterIcons.share),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class BottomRowIcon extends StatefulWidget {
  BottomRowIcon({Key? key, required this.icon}) : super(key: key);
  final IconData icon;
  @override
  _BottomRowIconState createState() => _BottomRowIconState();
}

class _BottomRowIconState extends State<BottomRowIcon> {
  @override
  Widget build(BuildContext context) {
    return Icon(
      widget.icon,
      size: 20,
    );
  }
}
