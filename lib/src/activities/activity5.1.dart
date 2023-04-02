import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/activities/results.dart';
import 'package:flutter_application_gamifacion/src/dataStore/medalls.dart';
import 'package:flutter_application_gamifacion/src/dataStore/questions.dart';

class Activitie5 extends StatefulWidget {
  Activitie5({Key? key}) : super(key: key);

  @override
  State<Activitie5> createState() => _Activitie5State();
}

class _Activitie5State extends State<Activitie5> {
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
                '¿Cuál de los siguientes no es un planeta ?: ',
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Results()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Sol',
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Results()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Tierra',
                        style: TextStyle(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Results()));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Saturno',
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
                'Preguntas acertadas 4/5 ',
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
