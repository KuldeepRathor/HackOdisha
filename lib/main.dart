import 'package:flutter/material.dart';
import 'package:hackodisha/screens/Onboardscreen.dart';
import 'package:provider/provider.dart';

import 'providers/piechart_provider.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HowToSpend(),
        ),
      ],
      child: const Fineta(),
    ),
  );
}

class Fineta extends StatelessWidget {
  const Fineta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fineta',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: Onboard(),
    );
  }
}
