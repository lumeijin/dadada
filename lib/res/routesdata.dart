import 'package:dadada/pages/sidebar/mycart.dart';
import 'package:dadada/pages/sidebar/mylogin.dart';
import 'package:dadada/pages/user/Login.dart';
import 'package:flutter/material.dart';

import '../pages/main_pages/centerpage/category.dart';
import '../pages/main_pages/settingpage/user/register_first.dart';
import '../pages/main_pages/settingpage/user/register_second.dart';
import '../pages/main_pages/settingpage/user/register_third.dart';
import '../pages/sidebar/mycatalog.dart';
import '../pages/sidebar/life.dart';
import '../pages/sidebar/research.dart';
import '../pages/sidebar/leisure.dart';
import '../pages/sidebar/study.dart';
import '../pages/tabs.dart';
import '../pages/tabs/Setting.dart';

final Map<String, Function> routes = {
  '/': (context, {arguments}) => const Tabs(),
  '/home': (context, {arguments}) => const LifePage(),
  '/category': (context, {arguments}) => const CategoryPage(),
  '/setting': (context, {arguments}) => const SettingPage(),
  '/study': (context, {arguments}) => StudyPage(),
  '/research': (context, {arguments}) => const ResearchPage(),
  '/life': (context, {arguments}) => const LifePage(),
  '/leisure': (context, {arguments}) => const LeisurePage(),

  '/login': (context, {arguments}) => const LoginPage(),
  '/register1': (context, {arguments}) => RegisterFirstPage(),
  '/register2': (context, {arguments}) => const RegisterSecondPage(),
  '/register3': (context, {arguments}) => const RegisterThirdPage(),

  '/mycatalog': (context, {arguments}) => const MyCatalog(),
  '/mylogin': (context, {arguments}) => const MyLogin(),
  '/mycart': (context, {arguments}) => const MyCart(),


};

Route? onGenerateRoute(RouteSettings settings) {
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
  return null;
}
