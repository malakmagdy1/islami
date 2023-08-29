import 'package:flutter/material.dart';
import 'package:islamic/moduls/quran/sura_details.dart';
import 'package:provider/provider.dart';

import '../../../core/style/app_theme.dart';
import '../../../settings_provider.dart';

class SuraNameWidget extends StatelessWidget {
  final String suraName;
  final int suraNumber;

  const SuraNameWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var appTheme = AppTheme();
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetails.routeName,
            arguments: SuraDetailss(suraName, suraNumber));
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
                child: Text(
              "${suraNumber + 1}".toString(),
              textAlign: TextAlign.center,
              style: provider.isDark()
                  ? AppTheme.lightTheme.textTheme.titleMedium
                  : AppTheme.darkTheme.textTheme.titleMedium,
            )),
            Container(
              height: 40,
              width: 2,
              color: Color(0xFFB7935F),
            ),
            Expanded(
                child: Text(
              suraName,
              textAlign: TextAlign.center,
              style: provider.isDark()
                  ? AppTheme.lightTheme.textTheme.titleMedium
                  : AppTheme.darkTheme.textTheme.titleMedium,
            )),
          ],
        ),
      ),
    );
  }
}

class SuraDetailss {
  late String suraName;
  late int suraIndex;

  SuraDetailss(this.suraName, this.suraIndex);
}
