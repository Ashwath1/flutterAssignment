import 'dart:ui';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(171, 219, 255, 1.0),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 70.0),
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: new BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://image.freepik.com/free-vector/working-day-stopwatch-with-daily-tasks_82574-10610.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 82.0, top: 20.0),
                child: Column(
                  children: [
                    Text(
                      'Manage your daily tasks',
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(0, 45, 79, 1.0)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              padding: EdgeInsets.only(left: 82.0),
              child: Text(
                  'Team and Project Management with solution providing Appp',
                  style: TextStyle(
                      fontSize: 15.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 45, 79, 1.0))),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30.0, right: 190.0),
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), //extend the shadow
                        )
                      ],
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: TextButton(
                      child: Text('Get Started',
                          style: const TextStyle(
                              fontSize: 20.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 45, 79, 1.0))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/homeScreen');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
