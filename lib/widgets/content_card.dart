import 'package:flutter/material.dart';
import 'package:news_app/common/utils.dart';
import 'package:news_app/pages/detail_page.dart';

class ContentCard extends StatelessWidget {
  const ContentCard({
    Key key,
    this.contentTitle,
    this.uploadTime,
    this.contentViews,
    this.contentImagePath,
    this.index,
  }) : super(key: key);

  final String contentTitle;
  final String uploadTime;
  final String contentViews;
  final String contentImagePath;
  final index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.id, arguments: index);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: defaultPadding * 2),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(contentImagePath),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: defaultPadding * 2),
              height: 70,
              width: 230,
              child: Column(
                children: [
                  Text(
                    contentTitle,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle1.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time_sharp,
                        color: Colors.grey,
                        size: 14,
                      ),
                      SizedBox(width: defaultPadding),
                      Text(
                        "$uploadTime Hours Ago",
                        style: Theme.of(context)
                            .textTheme
                            .overline
                            .copyWith(color: Colors.grey),
                      ),
                      Spacer(),
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                        size: 14,
                      ),
                      SizedBox(width: defaultPadding),
                      Text(
                        "$contentViews views",
                        style: Theme.of(context)
                            .textTheme
                            .overline
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
