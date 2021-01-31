import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:orderac/custom/custom_colors.dart';
import 'package:orderac/information/about_user.dart';
import 'package:orderac/screens/root.dart';
import 'package:orderac/services/auth_service.dart';
import 'package:orderac/temporary_screens/page1.dart';
import 'package:orderac/theme/theme.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// Dark Theme Motifier & Mode
final themeNotifier = ValueNotifier<ThemeModel>(ThemeModel(ThemeMode.system));
var themeMode = ThemeMode.system;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return StreamProvider<AboutUser>.value(
      value: AuthService().user,
      child: ValueListenableBuilder<ThemeModel>(
        valueListenable: themeNotifier,
        builder: (context, value, child) {
          final mode = value.mode;
          themeMode = mode;
          return MaterialApp(
            title: 'Orderac',
            theme: ThemeData(
              primaryColor: customCream,
              accentColor: customRed,
              scaffoldBackgroundColor: customCream,
              iconTheme: IconThemeData(
                color: customCream,
              ),
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: customRed
              ),
              textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.black),
                bodyText2: TextStyle(color: Colors.black),
                button: TextStyle(color: Colors.black),
                caption: TextStyle(color: Colors.black),
                headline1: TextStyle(color: Colors.black),
                headline2: TextStyle(color: Colors.black),
                headline3: TextStyle(color: Colors.black),
                headline4: TextStyle(color: Colors.black),
                headline5: TextStyle(color: Colors.black),
                headline6: TextStyle(color: Colors.black),
                overline: TextStyle(color: Colors.black),
                subtitle1: TextStyle(color: Colors.black),
                subtitle2: TextStyle(color: Colors.black),
              ),
            ),
            darkTheme: ThemeData(
              primaryColor: customDarkBlack,
              accentColor: customRed,
              scaffoldBackgroundColor: customDarkBlack,
              iconTheme: IconThemeData(
                color: customDarkBlack,
              ),
              floatingActionButtonTheme: FloatingActionButtonThemeData(
                backgroundColor: customRed
              ),
              textTheme: TextTheme(
                bodyText1: TextStyle(color: Colors.white),
                bodyText2: TextStyle(color: Colors.white),
                button: TextStyle(color: Colors.white),
                caption: TextStyle(color: Colors.white),
                headline1: TextStyle(color: Colors.white),
                headline2: TextStyle(color: Colors.white),
                headline3: TextStyle(color: Colors.white),
                headline4: TextStyle(color: Colors.white),
                headline5: TextStyle(color: Colors.white),
                headline6: TextStyle(color: Colors.white),
                overline: TextStyle(color: Colors.white),
                subtitle1: TextStyle(color: Colors.white),
                subtitle2: TextStyle(color: Colors.white),
              ),
            ),
            themeMode: themeMode,
            home: Root(),
          );
        },
      ),
    );
  }
}
