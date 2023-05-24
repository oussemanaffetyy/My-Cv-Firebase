import 'package:cvfirebase/auth_screen.dart';
import 'package:cvfirebase/pages/homepage.dart';
import 'package:cvfirebase/pages/mainSplashScreen.dart';
import 'package:flutter/material.dart';
import 'package:cvfirebase/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
      providers: [ChangeNotifierProvider<Auth>(
        create: (_) => Auth())],
      child: MyApp()));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Auth>(
        
      //debugShowCheckedModeBanner: false,
      builder: (ctx, value, _) =>MaterialApp(
      debugShowCheckedModeBanner: false,
       home: value.isAuth
            ? MyHomePage(key: UniqueKey(), title: '') : FutureBuilder(
              future: 
              value.tryAutoLogin(),
              builder: (ctx,snapShot)=>snapShot.connectionState==
              ConnectionState.waiting
              ? MainSplashScreen(): AuthScreen()),
    ));
  }
}
