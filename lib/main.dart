import 'package:flutter/material.dart';
import 'package:loonly_flutter/data/dummy_movies.dart';
import 'package:loonly_flutter/utils/colors.dart';
import 'package:loonly_flutter/views/mobile/dashboard_page_mobile.dart';
import 'package:loonly_flutter/views/mobile/detail_page.dart';
import 'package:loonly_flutter/views/web/dashboard_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: colorWhite,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth < 600) {
                  /// Mobile Display
                  return const DashboardPageMobile();
                } else {
                  /// Website Display
                  return const DashboardPageWeb();
                }
              },
            ),
        "/detail": (context) => DetailPage(data : ModalRoute.of(context)!.settings.arguments as Movie),
      },
    );
  }
}
