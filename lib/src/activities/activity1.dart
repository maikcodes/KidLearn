import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/activities/activity2.dart';
import 'package:flutter_application_gamifacion/src/dataStore/questions.dart';

class Activitie1 extends StatefulWidget {
  Activitie1({Key? key}) : super(key: key);

  @override
  State<Activitie1> createState() => _Activitie1State();
}

class _Activitie1State extends State<Activitie1> {
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
                '¿Cuáles de las siguientes palabras son palabras graves?: ',
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
                      activityQuestions1 += 1;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activitie2()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Dólar',
                        style: TextStyle(),
                      ), //correcta
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
                              builder: (context) => Activitie2()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Dálmata',
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
                              builder: (context) => Activitie2()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Brócoli',
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
                'Preguntas acertadas 0/5 ',
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
