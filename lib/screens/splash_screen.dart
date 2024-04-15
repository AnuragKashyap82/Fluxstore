import 'package:flucstore/screens/dashboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushReplacement(context, CupertinoPageRoute(builder: (_)=> DashboardScreen(), maintainState: false));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: Colors.white,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/logo.png",),

            Text("Fluxstore", style: TextStyle(
                fontWeight: FontWeight.w400,
                color: blue,
                letterSpacing: 0,
                fontSize: 26
            ),)
          ],
        ),
      ),
    );
  }
}
