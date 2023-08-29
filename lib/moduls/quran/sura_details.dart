import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic/moduls/quran/widgets/suraName_widget.dart';
import 'package:provider/provider.dart';

import '../../core/style/app_theme.dart';
import '../../settings_provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = "sura_detail";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String versContent = "1";
  List<String> versList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var args = ModalRoute.of(context)!.settings.arguments as SuraDetailss;
    readFile(args.suraIndex);
    if (versContent == '1') {
      readFile(args.suraIndex);
    }
    var theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(provider.isDark()
                  ? "assets/images/default_bg.png"
                  : "assets/images/dark_bg.png"),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: provider.isDark()
                ? AppTheme.darkTheme.appBarTheme.backgroundColor
                : AppTheme.lightTheme.appBarTheme.backgroundColor,
            title: Text(
              "اسلامي",
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 15, bottom: 80, left: 20, right: 20),
            padding: EdgeInsets.only(
              top: 50,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: provider.isDark()
                    ? const Color(0xFFFFFFFF)
                    : const Color(0x4C2454BB)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      " سورة ${args.suraName} ",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.play_circle),
                  ],
                ),
                Divider(
                  thickness: 1.5,
                  indent: 40,
                  endIndent: 40,
                  color: Color(0xFFB7935F),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Center(
                            child: Text(
                              (index + 1).toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(versList[index],
                              style: provider.isDark()
                                  ? AppTheme.lightTheme.textTheme.bodyLarge
                                  : AppTheme.darkTheme.textTheme.bodyLarge),
                        ),
                      ],
                    ),
                    itemCount: versList.length,
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  readFile(int index) async {
    String text = await rootBundle.loadString("assets/files/${index + 1}.txt");
    versContent = text;
    versList = versContent.split("\n");
    setState(() {
      print(text);
    });
  }
}
// Divider(thickness: 1,
//   indent: 30,
//   endIndent: 30,
//   color: Color(0xFFB7935F));
