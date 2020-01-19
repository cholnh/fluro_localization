import 'package:fluro/fluro.dart';
import 'package:fluro_localization/foo/ui/home_page.dart';
import 'package:fluro_localization/foo/ui/leaf_page.dart';
import 'package:fluro_localization/foo/ui/not_fount_page.dart';
import 'package:fluro_localization/foo/ui/demo_page.dart';
import 'package:flutter/material.dart';

var homeHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print('[Debug] homeHandler to HomePage');
    return HomePage();
});

var demoHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print('[Debug] homeHandler to DemoPage (args: ${params["id"]?.first})');
    return DemoPage(id: params["id"]?.first);
});

var leafHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print('[Debug] homeHandler to LeafPage (args: ${params["id"]?.first})');
    return LeafPage(id: params["id"]?.first);
});

var defaultHandler = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print('[Debug] homeHandler to NotFoundPage');
    return NotFoundPage();
});