import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fresh_mart_two/Providers/CartProvider.dart';
import 'package:fresh_mart_two/routes.dart';
import 'package:fresh_mart_two/screens/IntroScreen.dart';
import 'package:fresh_mart_two/theme.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (_) => runApp(
      MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        initialRoute: IntroScreen.routeName,
        routes: routes
      ),
    );
  }
}
