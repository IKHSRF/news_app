import 'package:flutter/material.dart';
import 'package:news_app/common/utils.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({
    Key key,
    this.categoryName,
    this.isActive = false,
  }) : super(key: key);

  final String categoryName;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: defaultPadding * 3),
          child: Text(
            categoryName,
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: (isActive) ? Colors.black : Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: defaultPadding * 3),
          width: 20,
          height: 2,
          color: (isActive) ? Colors.black : Colors.transparent,
        ),
      ],
    );
  }
}
