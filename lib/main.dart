// import 'package:barbar_app/screens/profile/payment/payment_method.dart';
import 'package:barbar_app/screens/profile/payment_method.dart';
import 'package:barbar_app/screens/widgets/styling_detail.dart';
import 'package:barbar_app/screens/login_screen.dart';
import 'package:barbar_app/splash.dart';
import 'package:barbar_app/test/striipetest.dart';
import 'package:barbar_app/test/stripe.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'admin/home/add_shope.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey='pk_live_51MtHWYBxpiJB1Itbm8tCbGFBVFhK3bwIvXGteyeZBJOkFRzHkmeUh79vRfroFGlBz1KjBVjsW6MXNKs0PhJkqj4U00S3wTVgji';
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BARB-Z',
      theme: ThemeData(
        canvasColor: Colors.white,
        primaryColor: Colors.red.shade900,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleMedium: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
            .copyWith(secondary: Colors.amber),
      ),
      home: SplashPage(),
      routes: {
        StylingDetailPage.routeName: (context) => StylingDetailPage(),
        PaymentDetailScreen.routeName: (context) => PaymentDetailScreen()
      },
    );
  }
}
