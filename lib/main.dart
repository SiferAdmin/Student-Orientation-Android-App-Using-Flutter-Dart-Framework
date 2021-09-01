import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'models/authentication.dart';
import 'screens/login_page.dart';
import 'theme/themes.dart';

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: MyThemes.darkTheme,
      child: Builder(
        builder: (context) => MultiProvider(
          providers: [ChangeNotifierProvider.value(value: Authentication())],
          child: MaterialApp(
              title: 'Student Orientation',
              debugShowCheckedModeBanner: false,
              theme: ThemeProvider.of(context),
              home: LoginPage()),
        ),
      ),
    );
  }
}
