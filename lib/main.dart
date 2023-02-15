import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tabby_test_app/pages/checkout_page.dart';
import 'package:tabby_test_app/pages/home_page.dart';
import 'package:tabby_flutter_inapp_sdk/tabby_flutter_inapp_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  TabbySDK().setup(
    withApiKey:
        // 'pk_test_d5b78906-8464-4ef6-80c2-30679da25555', // Put here your Api key
        'sk_test_fa702cf7-5c04-41b1-8fdc-def712d8c9da', // Put here your Api key
    // environment: Environment.production, // Or use Environment.stage
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Table Flutter SDK Demo',
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('ar', ''),
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/checkout': (context) => const CheckoutPage(),
      },
    );
  }
}
