import 'package:flutter/material.dart';
import 'package:news_app/common/utils.dart';
import 'package:news_app/models/content.dart';
import 'package:news_app/widgets/content_card.dart';
import 'package:news_app/widgets/custom_bottom_navbar.dart';
import 'dart:math' as math;

import 'package:news_app/widgets/news_category.dart';

class HomePage extends StatefulWidget {
  static const String id = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  bool isAnimate = false;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
      reverseDuration: Duration(milliseconds: 500),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.fromLTRB(
            defaultPadding * 4,
            defaultPadding * 4,
            defaultPadding * 4,
            0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Drawer Icon
              GestureDetector(
                onTap: () {
                  setState(() {
                    isAnimate
                        ? _animationController.forward()
                        : _animationController.reverse();
                    isAnimate = !isAnimate;
                  });
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.menu_close,
                  color: Colors.black,
                  size: 35,
                  progress: _animationController,
                ),
              ),
              SizedBox(height: defaultPadding * 4),
              //This is Title Section
              Text(
                "Discover",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              //This is SubTitle Section
              Text(
                "new things in technology",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .copyWith(color: Colors.grey),
              ),
              SizedBox(height: defaultPadding * 4),
              //Search Bar
              Container(
                padding: EdgeInsets.all(defaultPadding * 2),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: defaultPadding * 2),
                    Text(
                      "Search",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(color: Colors.grey),
                    ),
                    Spacer(),
                    Transform.rotate(
                      angle: math.pi / 2,
                      child: Icon(Icons.tune_outlined, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(height: defaultPadding * 4),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewsCategory(categoryName: "Android", isActive: true),
                    NewsCategory(categoryName: "IOS"),
                    NewsCategory(categoryName: "Game"),
                    NewsCategory(categoryName: "Web"),
                    NewsCategory(categoryName: "Desktop"),
                  ],
                ),
              ),
              SizedBox(height: defaultPadding * 4),
              Expanded(
                child: ListView.builder(
                  itemCount: listContent.length,
                  itemBuilder: (context, index) {
                    return ContentCard(
                      contentTitle: listContent[index].contentTitle,
                      uploadTime: listContent[index].uploadTime,
                      contentViews: listContent[index].contentViews,
                      contentImagePath: listContent[index].contentImagePath,
                      index: index,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
