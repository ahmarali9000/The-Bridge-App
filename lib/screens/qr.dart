import 'package:flutter/material.dart';
import 'package:the_bridge/screens/parameters.dart';

class QR extends StatefulWidget {
  const QR({Key? key}) : super(key: key);

  @override
  _QRState createState() => _QRState();
}

class _QRState extends State<QR> {
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
                  Image.asset('assets/p1.png'),
                  SizedBox(width: 75),
                  Text(
                    'Rejoindre une partie',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(height: 80),
              Image.asset(
                'assets/qr.png',
                height: 170,
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                  color: Colors.grey,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 25),
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
                          SizedBox(width: 100),
                          Container(
                            child: Text(
                              'Scan QR Code',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      margin: EdgeInsets.only(right: 20, left: 20),
                      padding: EdgeInsets.only(
                        left: 14.0,
                        right: 14.0,
                        top: 2.0,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Code de partie:",
                          hintStyle: TextStyle(
                            fontSize: 18.0,
                          ),
                          contentPadding: EdgeInsets.all(10.0),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(13),
                            ),
                            borderSide:
                                BorderSide(color: Colors.white, width: 0.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => Parameter()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.08,
                        margin: EdgeInsets.only(right: 30, left: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.black,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 70),
                            Container(
                              child: Text(
                                'Rejoindre la partie:',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          ],
                        ),
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
