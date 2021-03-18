import 'package:floges_flutter_app/config/router.gr.dart' as router;
import 'package:floges_flutter_app/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'config/locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: AppTheme.of(context),
      navigatorKey: StackedService.navigatorKey,
      initialRoute: router.Routes.splashScreen,
      onGenerateRoute: router.Router().onGenerateRoute,
    );
  }
}
