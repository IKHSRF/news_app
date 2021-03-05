import 'package:flutter/material.dart';
import 'package:news_app/pages/detail_page.dart';
import 'package:news_app/pages/home_page.dart';

import 'common/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: textTheme,
      ),
      title: "News App",
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (_) => HomePage(),
        DetailPage.id: (_) => DetailPage(),
      },
    );
  }
}
