import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secure_cred/src/app_provider_layer.dart';
import 'package:secure_cred/src/securecred_app.dart';

void main()async {
    WidgetsFlutterBinding.ensureInitialized();
  await setPreferredOrientations();
  // await configureInjection();
  // await Prefs.init();
  runApp(const AppProvidersLayer(
      child: SecureCredApp(),
    ));
}

Future<void> setPreferredOrientations() {
  return SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}