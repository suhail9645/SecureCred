import 'package:flutter/material.dart';

import '../utils/router_helper.dart';
import '../utils/shared_preference/shared_preference.dart';
import '../utils/shared_preference/shared_preference_key.dart';
import 'app_theme.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class SecureCredApp extends StatelessWidget {
  const SecureCredApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Secure Cred",
      navigatorKey: navigatorKey,
      routes: Routes.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      initialRoute: Prefs.getString(SharedPreferenceKeys.userToken).isEmpty
          ? Routes.login
            : Routes.home,
    );
  }
}