// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/login_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                Image.asset(
                  "assets/images/kidlearn_welcome.gif",
                  width: 250,
                ),
                SizedBox(
                  child: Text(
                    "KidLearn",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 46,
                      color: Color.fromRGBO(29, 116, 211, 2),
                    ),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Diviertete aprendiendo!",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.grey.shade500,
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
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
                Icons.home,
                color: Colors.white,
                size: 25.0,
              ),
              Text(
                'Iniciar Sesión',
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
