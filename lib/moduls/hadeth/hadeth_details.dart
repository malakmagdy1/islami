import 'package:flutter/material.dart';
import 'package:islamic/core/style/app_theme.dart';
import 'package:islamic/settings_provider.dart';
import 'package:provider/provider.dart';

class HadethDetails {
  String title;
  String content;

  HadethDetails(this.title, this.content);
}

class SingleHadeth extends StatelessWidget {
  static const String routeName = "single_hadeth";

  @override
  Widget build(BuildContext context) {
    var providar = Provider.of<SettingProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    var args = ModalRoute.of(context)?.settings.arguments as HadethDetails;
    return Container(
        width: mediaQuery.width * 0.5,
        height: mediaQuery.height * 0.7,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: providar.isDark()
                ? Colors.white.withOpacity(5)
                : AppTheme.darkTheme.primaryColor),
        child: Text(
          args.content,
          style: providar.isDark()
              ? AppTheme.lightTheme.textTheme.bodyLarge
              : AppTheme.darkTheme.textTheme.bodyLarge,
        ));
  }
}
