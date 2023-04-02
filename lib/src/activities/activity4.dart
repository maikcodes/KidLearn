import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/activities/activity5.1.dart';
import 'package:flutter_application_gamifacion/src/dataStore/medalls.dart';
import 'package:flutter_application_gamifacion/src/dataStore/questions.dart';

class Activitie4 extends StatefulWidget {
  Activitie4({Key? key}) : super(key: key);

  @override
  State<Activitie4> createState() => _Activitie4State();
}

class _Activitie4State extends State<Activitie4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ///Header
            Container(
              margin: EdgeInsets.only(top: 75),
            ),

            ///Question
            Container(
              height: 75,
              child: const Text(
                '¿Qué figura tiene 3 lados?: ',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
            ),

            ///Answers
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activitie5()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Rombo',
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activitie5()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Cuadrado',
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ElevatedButton(
                    onPressed: () {
                      activityQuestions1 += 1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activitie5()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Triángulo',
                        style: TextStyle(),
                      ),
                    ),
                  ),
                )
              ],
            ),

            ///Score
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Preguntas acertadas 3/5 ',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
