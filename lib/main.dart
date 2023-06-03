import 'package:ali_baba/home/home.dart';
import 'package:ali_baba/splash/splash.dart';
import 'package:ali_baba/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('fa'),
      ],
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        // splashColor: Colors.black,
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontWeight: FontWeight.w700),
          bodySmall: TextStyle(color: Colors.grey.shade700),
          bodyLarge: TextStyle(fontWeight: FontWeight.w800)
        ),
        dividerColor: Colors.black.withOpacity(0.05),
        fontFamily: 'Vazir',
        colorScheme: ColorScheme.light(
          background: Colors.yellow.shade800,

          surface: Colors.white,
          primary: Colors.yellow.shade800,
          onPrimary: Colors.black,
          secondary: Colors.black.withOpacity(0.6),
        ),

        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
