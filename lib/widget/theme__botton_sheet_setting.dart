import 'package:flutter/material.dart';
import 'package:islamic/core/style/app_theme.dart';
import 'package:islamic/settings_provider.dart';
import 'package:islamic/widget/selected_item.dart';
import 'package:islamic/widget/unselected_iteam.dart';
import 'package:provider/provider.dart';

//import '../core/style/app_theme.dart';

class ThemeButtonSheetSettings extends StatelessWidget {
  const ThemeButtonSheetSettings({Key? key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
      color: provider.isDark()
          ? AppTheme.lightTheme.bottomSheetTheme.backgroundColor
          : AppTheme.darkTheme.bottomSheetTheme.backgroundColor,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.enableLightTheme();
            },
            child: provider.isDark()
                ? UnSelectedIteam("Dark")
                : SelectedIteam("Dark"),
          ),
          InkWell(
            onTap: () {
              provider.enableDarkTheme();
            },
            child: provider.isDark()
                ? SelectedIteam("Light")
                : UnSelectedIteam("Light"),
          ),
        ],
      ),
    );
  }
}
