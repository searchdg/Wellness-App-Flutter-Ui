import 'package:flutter/material.dart';
import 'package:wellness_apps/home_page.dart';
import 'package:wellness_apps/product_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: "Avenir"),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          "/productPage": (context) => const ProductPage(),
        });
  }
}
