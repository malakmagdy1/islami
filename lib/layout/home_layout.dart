import 'package:flutter/material.dart';
import 'package:islamic/core/style/app_theme.dart';
import 'package:islamic/moduls/hadeth/hadeth_view.dart';
import 'package:islamic/moduls/quran/quran_view.dart';
import 'package:islamic/moduls/radio/radio_view.dart';
import 'package:islamic/moduls/sebha/sebha_view.dart';
import 'package:islamic/settings_provider.dart';
import 'package:provider/provider.dart';

import '../moduls/setting/setting_view.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home_layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int Selectedindex = 0;
  final List<Widget> screenWidgets = [
    QuranView(),
    HadethView(),
    SebhaView(),
    RadioView(),
    SettingView(),
    HadethView(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.isDark()
                    ? "assets/images/default_bg.png"
                    : "assets/images/dark_bg.png"),
                fit: BoxFit.fill)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: provider.isDark()
                ? AppTheme.darkTheme.appBarTheme.backgroundColor
                : AppTheme.lightTheme.appBarTheme.backgroundColor,
            title: Text(
              "اسلامي",
            ),
          ),
          body: screenWidgets[Selectedindex],
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: provider.isDark()
                  ? AppTheme.lightTheme.bottomNavigationBarTheme.backgroundColor
                  : AppTheme.darkTheme.bottomNavigationBarTheme.backgroundColor,
            ),
            child: BottomNavigationBar(
              currentIndex: Selectedindex,
              onTap: (index) {
                setState(() {
                  Selectedindex = index;
                });
              },
              selectedItemColor: provider.isDark()
                  ? AppTheme
                      .lightTheme.bottomNavigationBarTheme.selectedItemColor
                  : AppTheme
                      .darkTheme.bottomNavigationBarTheme.selectedItemColor,
              unselectedItemColor: provider.isDark()
                  ? AppTheme
                      .lightTheme.bottomNavigationBarTheme.unselectedItemColor
                  : AppTheme
                      .darkTheme.bottomNavigationBarTheme.unselectedItemColor,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_quran.png"),
                    ),
                    label: "قران"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_hadeth.png"),
                    ),
                    label: "حديث"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_sebha.png"),
                    ),
                    label: "سبحه"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_radio.png"),
                    ),
                    label: "راديو"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: "setting"),
              ],
            ),
          ),
        ));
  }
}
