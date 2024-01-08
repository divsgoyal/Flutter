import 'package:flutter/material.dart';
import 'package:flutter_catalo/pages/cart_page.dart';
import 'package:flutter_catalo/pages/login_page.dart';
import 'package:flutter_catalo/utils/routes.dart';
import 'package:flutter_catalo/pages/home_page.dart';
import 'package:flutter_catalo/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage()
      },
    );
  }
}
