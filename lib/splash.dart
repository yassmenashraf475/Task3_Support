import 'package:flutter/material.dart';
import 'package:task_support_3/modules/login/login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState(){
    super.initState();
    _navigatetologin();
  }

  _navigatetologin()async{
    await Future.delayed(
        Duration(milliseconds: 3000),(){});
        Navigator.pushReplacement(context,
           MaterialPageRoute(builder: (context) => LoginScreen(),));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'talabat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: Colors.white,
                fontFamily: "fonttry",
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.orange[900],
    );
  }
}
