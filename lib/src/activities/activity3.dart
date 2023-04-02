import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/activities/activity4.dart';
import 'package:flutter_application_gamifacion/src/dataStore/questions.dart';

class Activitie3 extends StatefulWidget {
  Activitie3({Key? key}) : super(key: key);

  @override
  State<Activitie3> createState() => _Activitie3State();
}

class _Activitie3State extends State<Activitie3> {
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
                '¿Cuál de los siguientes animales es un mamífero?: ',
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
                              builder: (context) => Activitie4()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Tortuga',
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
                              builder: (context) => Activitie4()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Gato',
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
                              builder: (context) => Activitie4()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Mariposa',
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
                'Preguntas acertadas 2/5 ',
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
