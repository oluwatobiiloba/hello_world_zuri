import 'package:flutter/material.dart';

void main() {
  runApp(HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "My Profile",
            textDirection: TextDirection.ltr,
          ),
          centerTitle: true,
        ),
        //cover picture
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/3.jpg'), fit: BoxFit.cover),
          ),
          child: Stack(
              alignment: Alignment.topCenter,
              fit: StackFit.expand,
              children: [
                Center(
                  child: Container(
                    // margin: EdgeInsets.only(top: 25),
                    height: 600,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                  ),
                ),
                Center(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: CircleAvatar(
                        radius: 100.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 12.0,
                              child: Icon(
                                Icons.camera_alt,
                                size: 15.0,
                                color: Color(0xFF404040),
                              ),
                            ),
                          ),
                          radius: 95.0,
                          backgroundImage: AssetImage('images/5.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'AREMU OLUWATOBILOBA FRANKLIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'AREMU OLUWATOBILOBA FRANKLIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 200.0),
                    child: Text(
                      'Flutter Developer',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w200,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 280.0),
                    child: Text(
                      'Beginner',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w200,
                        fontSize: 13.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 550.0),
                    child: FlutterLogo(
                      size: 30,
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
