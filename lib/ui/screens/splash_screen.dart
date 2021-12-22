import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../Auth/ui/login_scrren.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return LoginScreen();
      }));
    });
    return Scaffold(
      backgroundColor: Colors.blue[600],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Image.asset(
              'assets/images/logo.png',
            ),
          ),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(padding: EdgeInsets.all(10),
                  child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                  )
          )

        ],
      ),
    );
  }
}
