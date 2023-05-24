import 'package:cvfirebase/auth.dart';
import 'package:cvfirebase/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';
class MainSplashScreen extends StatelessWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final appTitle = 'My App';
    return Scaffold(
        body: EasySplashScreen(
          logo: Image.asset('images/logo1.png'),
          
          title: Text(
            "My CV",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color(0xff289eff),
          logoWidth: 100,
          showLoader: true,
          loadingText: Text("Loading..."),
          durationInSeconds: 3,
        ),
     
    );
  }
}

