import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/style/app_theme.dart';
import '../../settings_provider.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  bool play = false;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset("assets/images/radio_image.png"),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "اذاعه القران الكريم",
          style: provider.isDark()
              ? AppTheme.lightTheme.textTheme.titleMedium
              : AppTheme.darkTheme.textTheme.titleMedium,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_previous,
                  size: 50,
                  color: provider.isDark()
                      ? Color(0xFFB7935F)
                      : Color(0xFF907C26))),
          IconButton(
            onPressed: () {
              setState(() {
                play = !play;
              });
            },
            icon: Icon(play ? Icons.stop : Icons.play_arrow,
                size: 50,
                color:
                    provider.isDark() ? Color(0xFFB7935F) : Color(0xFF907C26)),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.skip_next,
                size: 50,
                color:
                    provider.isDark() ? Color(0xFFB7935F) : Color(0xFF907C26),
              )),
        ],
      ),
    ]);
  }
}
