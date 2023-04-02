// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/activities/activity1.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            //color: Color.fromRGBO(0, 65, 196, 1),
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/activitiesSafes/Road.jpg',
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.0),
                bottomRight: Radius.circular(40.0))),
        child: Container(
          decoration: const BoxDecoration(
              //color: Color.fromRGBO(0, 65, 196, 1),
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/activitiesSafes/Road.jpg',
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0))),
          child: Scrollbar(
              child: Scaffold(
            body: SingleChildScrollView(
                child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    child: Container(
                      color: Colors.blue,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Center(
                          child: Text(
                            "Semana 1",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                    padding: const EdgeInsets.only(top: 30, left: 40),
                    child: InkWell(
                      onTap: () {
                        //final Activitie1 _activitie1 = Activitie1();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Activitie1()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/activitiesSafes/alphabet.png',
                            ),
                            backgroundColor: Colors.red,
                            radius: 50,
                          ),
                        ],
                      ),
                    )),

                // Stack(
                //   // ignore: prefer_const_literals_to_create_immutables
                //   children: <Widget>[
                //     const Divider(
                //       color: Colors.black,
                //       thickness: 30,
                //     ),
                //     const Positioned(
                //       left: 0,
                //       right: 0,
                //       child: Text(
                //         'Semana 1',
                //         textAlign: TextAlign.center,
                //         style: TextStyle(
                //             backgroundColor: Colors.transparent,
                //             color: Colors.white,
                //             fontWeight: FontWeight.bold),
                //       ),
                //     )
                //   ],
                // ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/animals.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 240),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/book.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/home.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    child: Container(
                      color: Colors.blue,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Center(
                          child: Text(
                            "Semana 2",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/alphabet.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/education.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 240),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/webinar.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 140),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/home.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Card(
                    child: Container(
                      color: Colors.blue,
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        child: Center(
                          child: Text(
                            "Semana 3",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/activitiesSafes/book.png',
                        ),
                        backgroundColor: Colors.red,
                        radius: 50,
                      )
                    ],
                  ),
                ),
              ],
            )),
          )),
        ));

    /*return Container(
        
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            InkWell(
                child: CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/achievements/medall.png', ),
            backgroundColor: Colors.red,)),
            InkWell(
                child:  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: new IconButton(icon: new Icon(Icons.location_on),
                        iconSize:90.0,
                        onPressed:(){},
                      ),
                    )
                )
            ),
          ],
        ),
      );*/
    /*return ListView(
      //color: Colors.white,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20, left: 10),
          child: CircleAvatar(
            backgroundImage:
                AssetImage('assets/images/achievements/medall.png', ),
            backgroundColor: Colors.red,
            radius: Image.asset          ),
        ),
      ],
    );*/
  }
}
