import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamic/layout/home_layout.dart';
import 'package:islamic/moduls/quran/sura_details.dart';
import 'package:islamic/moduls/splash/splash_view.dart';
import 'package:islamic/settings_provider.dart';
import 'package:provider/provider.dart';

//import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var providar = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      themeMode: providar.themeMode,
      locale: Locale(providar.currentLanguage),
      //choose language
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      routes: {
        SplashView.routeName: (context) => SplashView(), //contain timer
        HomeLayout.routeName: (context) => HomeLayout(),
        SuraDetails.routeName: (context) => SuraDetails(),
      },
    );
  }
}

// //write Text(AppLocalizations.of(context)!.key)
// }//last element without , and key is firs what i write in my app
