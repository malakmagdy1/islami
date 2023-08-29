import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/style/app_theme.dart';
import '../../settings_provider.dart';

class SebhaView extends StatefulWidget {
  @override
  SebhaViewState createState() => SebhaViewState();
}

class SebhaViewState extends State<SebhaView> {
  int angle = 0;
  int count = 0;
  String? selectedOption;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(alignment: Alignment.center, clipBehavior: Clip.none, children: [
          Positioned(
            top: -80,
            left: 70,
            child: Image.asset(
              "assets/images/head_sebha_logo.png",
              height: 130,
            ),
          ),
          RotationTransition(
              turns: AlwaysStoppedAnimation(angle / 360),
              child: Image.asset(
                "assets/images/body_sebha_logo.png",
                height: 170,
              )),
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("عدد التسبيحات",
              style: provider.isDark()
                  ? AppTheme.lightTheme.textTheme.titleMedium
                  : AppTheme.darkTheme.textTheme.titleMedium),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: provider.isDark()
                      ? AppTheme.lightTheme.primaryColor
                      : AppTheme.darkTheme.canvasColor),
              onPressed: () {
                setState(() {
                  angle += 50;
                  count++;
                });
              },
              child: Text(count.toString()),
              // button text
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: provider.isDark()
                      ? AppTheme.lightTheme.primaryColor
                      : AppTheme.darkTheme.canvasColor),
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: Text("C"),
              // button text
            ),
          ],
        ),
        SizedBox(height: 20),
        Container(
          width: 250,
          child: DropdownButtonFormField(
            dropdownColor: provider.isDark()
                ? AppTheme.lightTheme.primaryColor
                : AppTheme.darkTheme.canvasColor,
            hint: Text(
              "اختر التسبيح",
              style: provider.isDark()
                  ? AppTheme.lightTheme.textTheme.bodySmall
                  : AppTheme.darkTheme.textTheme.bodySmall,
            ),
            // placeholder text
            value: selectedOption,
            items: [
              DropdownMenuItem(
                value: "سبحان الله و بحمده",
                child: Text("سبحان الله و بحمده"),
              ),
              DropdownMenuItem(
                value: "سبحان الله و العظيم",
                child: Text("سبحان الله و العظيم"),
              ),
              DropdownMenuItem(
                value: "استغفر الله",
                child: Text("استغفر الله"),
              ),
              DropdownMenuItem(
                value: "الله اكبر",
                child: Text("الله اكبر"),
              ),
              DropdownMenuItem(
                value: "لا إله إلا الله",
                child: Text("لا إله إلا الله"),
              ),
              DropdownMenuItem(
                value: "لا حول ولا قوة إلا بالله",
                child: Text("لا حول ولا قوة إلا بالله"),
              ),
            ],
            onChanged: (value) {
              setState(() {
                selectedOption = value as String?;
              });
            },
          ),
        ),
      ],
    ));
  }
}
