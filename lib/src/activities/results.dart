// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/dataStore/medalls.dart';
import 'package:flutter_application_gamifacion/src/dataStore/questions.dart';
import 'package:flutter_application_gamifacion/src/home.dart';
import 'package:flutter_application_gamifacion/src/login_page.dart';
import 'package:flutter_application_gamifacion/src/navbar.dart';

class Results extends StatelessWidget {
  const Results({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 100, bottom: 100, left: 20, right: 20),
          child: Align(
            alignment: Alignment.center,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Text(
                    "Resultados de la actividad",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 46,
                      color: Color.fromRGBO(29, 116, 211, 2),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "Continua Aprendiendo!",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Image.asset(
                    'assets/images/results.png',
                    width: 250,
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Text(
                      "tu resultado es: $activityQuestions1/5!",
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                ),
                const Flexible(
                  child: FractionallySizedBox(
                    heightFactor: 0.75,
                  ),
                ),
                _btnAbrirHistoriaClinica(context),
              ],
            )),
          ),
        ),
      ),
    );
  }

  Widget _btnAbrirHistoriaClinica(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: ElevatedButton(
        onPressed: () {
          if (primeraMedalla) {
            primeraMedalla = false;
            tumOgrenciler.add(Ogrenci(
                1,
                '$assetsImagesAchievements/medall.png',
                "Ponerse en marcha",
                "Por tomar las riendas de un nuevo comienzo",
                Color.fromARGB(206, 251, 231, 6)));
          }
          if (activityQuestions1 == 5 && actividad1Medalla) {
            actividad1Medalla = false;
            tumOgrenciler.add(Ogrenci(
                2,
                '$assetsImagesAchievements/medall.png',
                "Maestro cultural",
                "Por haber completado la primera actividad con nota máxima",
                Color.fromARGB(206, 229, 18, 187)));
          }
          activityQuestions1 = 0;
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => navBarbottom()));
        },
        style: TextButton.styleFrom(
            textStyle: const TextStyle(color: Colors.white),
            backgroundColor: Color.fromRGBO(29, 116, 211, 2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 100.5, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 25.0,
              ),
              Text(
                'Regresar a inicio',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
