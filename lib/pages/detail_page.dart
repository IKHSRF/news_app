import 'package:flutter/material.dart';
import 'package:news_app/common/utils.dart';
import 'package:news_app/models/content.dart';

class DetailPage extends StatelessWidget {
  static const String id = '/detailPage';

  @override
  Widget build(BuildContext context) {
    var index = ModalRoute.of(context).settings.arguments;
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 4,
                vertical: defaultPadding * 6,
              ),
              width: double.infinity,
              height: screenSize.height / 2,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(listContent[index].contentImagePath),
                fit: BoxFit.fill,
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: defaultPadding * 2),
                    height: 30,
                    width: 80,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Text(
                      "Android",
                      style: Theme.of(context).textTheme.caption.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Text(
                    listContent[index].contentTitle,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: defaultPadding),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: Colors.white.withOpacity(0.8),
                        ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(defaultPadding * 4),
                width: double.infinity,
                height: screenSize.height / 1.85,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: 120,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Ikhsan Arfian",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2
                                .copyWith(color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time_sharp,
                                color: Colors.grey,
                                size: 20,
                              ),
                              SizedBox(width: defaultPadding),
                              Text(
                                "${listContent[index].uploadTime}h",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                                color: Colors.grey,
                                size: 20,
                              ),
                              SizedBox(width: defaultPadding),
                              Text(
                                "${listContent[index].contentViews}h",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: defaultPadding * 4),
                    Text(
                      'Lorem ipsum dolor sit amet',
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: defaultPadding * 2),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
