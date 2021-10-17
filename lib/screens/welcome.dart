import 'package:flutter/material.dart';
import 'package:the_bridge/screens/mainPage.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.lightBlue[900],
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 105),
              Text(
                'Welcome To',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Image.asset('assets/Group 9024.png'),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MainPage(),
                    ),
                  );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  margin: EdgeInsets.only(right: 30, left: 30),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 130),
                      Text(
                        'French',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      SizedBox(width: 90),
                      Image.asset('assets/back.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                margin: EdgeInsets.only(right: 30, left: 30),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color.fromRGBO(48, 220, 255, 1)),
                child: Row(
                  children: [
                    SizedBox(width: 130),
                    Text(
                      'French',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
