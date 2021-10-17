import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Parameter extends StatefulWidget {
  const Parameter({Key? key}) : super(key: key);

  @override
  _ParameterState createState() => _ParameterState();
}

class _ParameterState extends State<Parameter> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height * 1,
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.deepPurple[900],
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/p1.png'),
                  ),
                  SizedBox(width: 100),
                  Text(
                    'Paramètres',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 80),
              Container(
                height: 55,
                margin: EdgeInsets.only(right: 25, left: 25),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  border: Border.all(color: Colors.grey, width: 0.95),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Localisation',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 170),
                    CupertinoSwitch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      trackColor: Color.fromRGBO(18, 117, 218, 1),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13),
              Container(
                height: 55,
                margin: EdgeInsets.only(right: 25, left: 25),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  border: Border.all(color: Colors.grey, width: 0.95),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Photo',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 217),
                    CupertinoSwitch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      trackColor: Color.fromRGBO(18, 117, 218, 1),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 13),
              Container(
                height: 55,
                margin: EdgeInsets.only(right: 25, left: 25),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  border: Border.all(color: Colors.grey, width: 0.95),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Indice',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 8),
                    Image.asset('assets/info but.png'),
                    SizedBox(width: 140),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.plus,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '4 Min',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.minus,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 55,
                margin: EdgeInsets.only(right: 25, left: 25),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  border: Border.all(color: Colors.grey, width: 0.95),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Temps de jeu',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 110),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.plus,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '1H15',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.minus,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 55,
                margin: EdgeInsets.only(right: 25, left: 25),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  border: Border.all(color: Colors.grey, width: 0.95),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Périmètre',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 140),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.plus,
                        size: 15,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '3 KM',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(width: 8),
                    Container(
                      height: 23,
                      width: 23,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Colors.white,
                      ),
                      child: Icon(
                        CupertinoIcons.minus,
                        size: 15,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 55,
                margin: EdgeInsets.only(right: 25, left: 25),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(13),
                  ),
                  border: Border.all(color: Colors.grey, width: 0.95),
                ),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'I pay for others',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    SizedBox(width: 145),
                    CupertinoSwitch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      trackColor: Color.fromRGBO(18, 117, 218, 1),
                      activeColor: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: MediaQuery.of(context).size.height * 0.08,
                margin: EdgeInsets.only(right: 30, left: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Color.fromRGBO(48, 220, 255, 1)),
                child: Row(
                  children: [
                    SizedBox(width: 130),
                    Container(
                      child: Text(
                        'Continuer',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
