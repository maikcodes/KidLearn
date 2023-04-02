import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/activities/activity3.dart';
import 'package:flutter_application_gamifacion/src/dataStore/questions.dart';

class Activitie2 extends StatefulWidget {
  Activitie2({Key? key}) : super(key: key);

  @override
  State<Activitie2> createState() => _Activitie2State();
}

class _Activitie2State extends State<Activitie2> {
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
                '¿Cuál de los siguientes colores no es un color primario?: ',
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
                              builder: (context) => Activitie3()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Azul',
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
                              builder: (context) => Activitie3()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Rosado',
                        style: TextStyle(),
                      ), // correcto
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
                              builder: (context) => Activitie3()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Rojo',
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
                'Preguntas acertadas 1/5 ',
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
