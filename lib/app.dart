import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:provider/provider.dart';
import 'package:simple_colorful_theme/provider/theme_provider.dart';

class ThemeColorApp extends StatelessWidget {

  void _showColorPicker(BuildContext context) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        titlePadding: const EdgeInsets.all(0.0),
        contentPadding: const EdgeInsets.all(0.0),
        content: Wrap(
          children: [
            ColorPicker(
              pickerColor: themeProvider.mainColor,
              onColorChanged: (color) => themeProvider.changeThemeColor(color),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          )
        ],
      ),
    );
  }

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
        home: _buildMobileLayoutWidget(context),
      ),
    );
  }

  Widget _buildMobileLayoutWidget(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Hello There',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ));
  }
}
