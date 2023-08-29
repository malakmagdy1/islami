import 'package:flutter/material.dart';
import 'package:islamic/widget/theme__botton_sheet_setting.dart';
import 'package:provider/provider.dart';

import '../../settings_provider.dart';
import '../../widget/Language_setting.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    double containerWidth = MediaQuery.of(context).size.width * 1.0;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: containerWidth,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 3,
                  color: provider.isDark() ? Color(0xFFB7935F) : Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton(
              child: Text(
                "Language",
                style: TextStyle(
                    color:
                        provider.isDark() ? Color(0xFFB7935F) : Colors.white),
              ),
              onPressed: () {
                showLanguageSheet();
              },
            )),
        SizedBox(
          height: 20,
        ),
        Container(
            width: containerWidth,
            decoration: BoxDecoration(
              border: Border.all(
                  width: 3,
                  color: provider.isDark() ? Color(0xFFB7935F) : Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton(
              child: Text(
                "Mode",
                style: TextStyle(
                    color:
                        provider.isDark() ? Color(0xFFB7935F) : Colors.white),
              ),
              onPressed: () {
                showThemeButtonSheet();
              },
            )),
      ],
    );
  }

  showThemeButtonSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeButtonSheetSettings());
  }

  showLanguageSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => TheLanguageSetting());
  }
}
