import 'package:bmi_mobile_computing/Auth/providers/auth_provider.dart';
import 'package:bmi_mobile_computing/ui/screens/complete_info_screen.dart';
import 'package:bmi_mobile_computing/ui/screens/home_screen.dart';

import 'package:bmi_mobile_computing/ui/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'main_provider/main_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create:(_) => MainProvider(),),
    ChangeNotifierProvider(create:(_) => AuthProvider())
  ],child:MaterialApp(home: FirebaseConfiguration()),));
}

class FirebaseConfiguration extends StatelessWidget {
  static final routeName = 'FirebaseConfiguration';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseApp>(
        future: Firebase.initializeApp(),
        builder: (context, AsyncSnapshot<FirebaseApp> data) {
          if (data.hasError) {
            return Scaffold(
              backgroundColor: Colors.red,
              body: Center(
                child: Text(data.error.toString()),
              ),
            );
          }
          if (data.connectionState == ConnectionState.done) {
            return SplashScreen();
          } else
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
        });
  }
}
