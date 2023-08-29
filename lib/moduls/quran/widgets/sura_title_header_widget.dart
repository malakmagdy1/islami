import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../settings_provider.dart';

class SuraTitleHeaderWidget extends StatelessWidget {
  const SuraTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingProvider>(context);
    var theme = Theme.of(context);
    return Column(
      children: [
        Divider(
          color: Color(0xFFB7935F),
          thickness: 2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("رقم الصوره",
                style: TextStyle(
                  color: provider.isDark() ? Colors.black : Color(0xFF907C26),
                )),
            Container(
              height: 30,
              width: 2,
              color: Color(0xFFB7935F),
            ),
            Text("اسماء الصور",
                style: TextStyle(
                  color: provider.isDark() ? Colors.black : Color(0xFF907C26),
                ))
          ],
        ),
        Divider(
          color: Color(0xFFB7935F),
          thickness: 2,
        ),
      ],
    );
  }
}
