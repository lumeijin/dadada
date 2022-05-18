import 'package:dadada/pages/user/Login.dart';
import 'package:flutter/material.dart';

import '../pages/sidebar/life.dart';
import '../pages/sidebar/research.dart';
import '../pages/sidebar/leisure.dart';
import '../pages/sidebar/study.dart';
import '../pages/tabs.dart';
import '../pages/tabs/Setting.dart';
import '../pages/tabs/category.dart';
import '../pages/user/register_first.dart';
import '../pages/user/register_second.dart';
import '../pages/user/register_third.dart';

final Map<String, Function> routes = {
  '/': (contxt, {arguments}) => const Tabs(),
  '/home': (context, {arguments}) => const LifePage(),
  '/category': (context, {arguments}) => CategoryPage(),
  '/setting': (context, {arguments}) => SettingPage(),
  '/study': (context, {arguments}) => StudyPage(),
  '/research': (context, {arguments}) => ResearchPage(),
  '/life': (context, {arguments}) => LifePage(),
  '/leisure': (context, {arguments}) => LeisurePage(),

  '/login': (context, {arguments}) => const LoginPage(),
  '/register1': (context, {arguments}) => RegisterFirstPage(),
  '/register2': (context, {arguments}) => const RegisterSecondPage(),
  '/register3': (context, {arguments}) => const RegisterThirdPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  //String? 表示name为可空类型
  final String? name = settings.name;
  //Function? 表示pageContentBuilder为可空类型
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
