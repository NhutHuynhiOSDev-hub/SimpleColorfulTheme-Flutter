import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_colorful_theme/provider/theme_provider.dart';
import 'package:simple_colorful_theme/screen/home_screen.dart';

class ThemeColorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeProvider>(
      create: (context) => ThemeProvider(),
      child: MaterialApp(
        title: 'Flutter Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(brightness: Brightness.dark),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
