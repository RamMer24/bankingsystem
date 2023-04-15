

import 'package:bankingsystem/screen/Splshscreen.dart';
import 'package:bankingsystem/screen/createpin.dart';
import 'package:bankingsystem/screen/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Homepage extends StatefulWidget {

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('img/log.jpg'), fit: BoxFit.none)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(child: ElevatedButton(

                onPressed: () async{

              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.clear();


              Navigator.of(context).pop();
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>SplashScreen()));

            },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent, // Background color
              ),
              child: const Text(
                'LOG OUT',
                style: TextStyle(fontSize: 40),
              ),
            ),
            ),
          ],
        ),
      ),
    );

  }
}
