// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/home.dart';
import 'package:flutter_application_gamifacion/src/navbar.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

final RoundedLoadingButtonController _btnController =
    RoundedLoadingButtonController();

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerLogin = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();
  bool passwordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints constraints) => Form(
          key: _formKey,
          child: Container(
            color: Colors.white,
            height: constraints.maxHeight,
            width: constraints.maxWidth,
            padding:
                const EdgeInsets.only(top: 60, left: 16, right: 16, bottom: 16),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  const Text(
                    "Ingresa tus datos",
                    style: TextStyle(
                        color: Color.fromRGBO(29, 116, 211, 2),
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      hintText: 'Nombre de Usuario',
                      labelText: 'Usuario',
                      //helperText: 'Escriba solamente su cédula',
                      suffixIcon: const Icon(Icons.account_circle),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        hintText: 'Contraseña del usuario',
                        labelText: 'Contraseña',
                        //helperText: 'Escriba solamente su cédula',
                        suffixIcon: IconButton(
                          icon: Icon(passwordVisible
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RoundedLoadingButton(
                    color: Color.fromRGBO(29, 116, 211, 2),
                    child: Text('Inciar sesión',
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                    controller: _btnController,
                    onPressed: () => _doSomething(context),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Olvide la contraseña",
                      style: TextStyle(
                        color: Color.fromRGBO(29, 116, 211, 2),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _doSomething(BuildContext context) async {
    Timer(Duration(seconds: 3), () {
      _btnController.success();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => navBarbottom()));
    });
  }
}
