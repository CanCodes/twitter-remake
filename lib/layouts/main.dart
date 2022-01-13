import 'package:flutter/material.dart';
import 'package:twitter_remake/components/twitter_icons_icons.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainLayout extends StatefulWidget {
  MainLayout({Key? key, this.title = "Home", required this.child})
      : super(key: key);
  final String title;
  final Widget child;
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backLightGray,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constants.white,
        leading: IconButton(
          icon: FaIcon(
            FontAwesomeIcons.twitter,
            color: Constants.primaryColor,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: Constants.backDark, fontSize: 18),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FaIcon(
                FontAwesomeIcons.user,
                color: Constants.backDark,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: widget.child,
      ),
      drawer: Drawer(
        backgroundColor: Constants.backDark,
        child: Container(
          child: Text("hi"),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Icon(TwitterIcons.home),
              Icon(TwitterIcons.search),
              SizedBox(
                width: 16,
              ),
              Icon(TwitterIcons.bell),
              Icon(TwitterIcons.dms),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Constants.primaryColor,
        focusColor: Constants.primaryColor,
        splashColor: Constants.white,
        child: const Icon(TwitterIcons.newtweet),
        elevation: 1,
        focusElevation: 0,
        highlightElevation: 0,
        onPressed: () => true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
