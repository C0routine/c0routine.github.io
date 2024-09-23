import 'package:blog/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart' as web_plugins;

void main() {
  web_plugins.usePathUrlStrategy();
  runApp(const BlogApp());
}
