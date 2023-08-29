import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/moduls/hadeth/hadeth_title.dart';
import 'package:provider/provider.dart';

import '../../core/style/app_theme.dart';
import '../../settings_provider.dart';
import 'hadeth_details.dart';

class HadethView extends StatefulWidget {
  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethDetails> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    var providar = Provider.of<SettingProvider>(context);
    loadHadethField();
    return Container(
        child: Column(children: [
      Image.asset("assets/images/hadeth_logo.png"),
      Divider(
        thickness: 1,
        color: providar.isDark()
            ? AppTheme.lightTheme.primaryColor
            : AppTheme.darkTheme.canvasColor,
      ),
      Text(
        "حديث",
        style: providar.isDark()
            ? AppTheme.lightTheme.textTheme.titleMedium
            : AppTheme.darkTheme.textTheme.titleMedium,
      ),
      Divider(
        thickness: 1,
        color: providar.isDark()
            ? AppTheme.lightTheme.primaryColor
            : AppTheme.darkTheme.canvasColor,
      ),
      Expanded(
        child: ListView.separated(
            itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,
                        "single_hadeth"); //arguments:SingleHadeth[index]
                  },
                  child: HadethTitleWedgit(allHadeth[index].title),
                ),
            separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Divider(
                    thickness: 1,
                    color: providar.isDark()
                        ? AppTheme.lightTheme.primaryColor
                        : AppTheme.darkTheme.canvasColor,
                  ),
                ),
            itemCount: allHadeth.length),
      ),
    ]));
  }

  void loadHadethField() async {
    List<HadethDetails> list = [];
    String content = await rootBundle.loadString("assets/files/hadeth.txt");
    List<String> allHadethContent = content.split("#");
    for (int i = 0; i < content.length; i++) {
      String singleHadethContent = allHadethContent[i].trim();
      int indexOfFirstLine = singleHadethContent.indexOf("\n");
      String title = singleHadethContent.substring(0, indexOfFirstLine);
      String content = singleHadethContent.substring(indexOfFirstLine);
      HadethDetails hadeth = HadethDetails(title, content);
      list.add(hadeth);
//   List <String>singleHadethLines=allHadethContent[i].trim().split("\n");
//   String title=singleHadethLines[0];
// singleHadethLines.remove(0);
// String content =singleHadethLines.join("\n");
    }
    setState(() {
      allHadeth = list;
    });
  }
}
