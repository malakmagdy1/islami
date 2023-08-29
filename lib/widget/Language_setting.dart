import 'package:flutter/material.dart';
import 'package:islamic/widget/selected_item.dart';
import 'package:islamic/widget/unselected_iteam.dart';
import 'package:provider/provider.dart';

import '../core/style/app_theme.dart';
import '../settings_provider.dart';

class TheLanguageSetting extends StatelessWidget {
  const TheLanguageSetting({super.key});

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
              provider.selectedArabic();
            },
            child: provider.CurrentLanguage()
                ? UnSelectedIteam("Arabic")
                : SelectedIteam("Arabic"),
          ),
          InkWell(
            onTap: () {
              provider.electedEnglish();
            },
            child: provider.CurrentLanguage()
                ? SelectedIteam("English")
                : UnSelectedIteam("English"),
          ),
        ],
      ),
    );
  }
}
