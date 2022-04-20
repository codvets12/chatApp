import 'package:first_check/provider/auth_provider/auth_provider.dart';
import 'package:first_check/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => AuthProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: Routes.routes(context),
      //home: LandingScreen(),
    );
  }
}
