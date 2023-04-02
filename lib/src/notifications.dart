import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  NotificationsScreen({Key? key}) : super(key: key);

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: ListView(
          children: <Widget>[
            miCard(),
            miCardImage(),
            miCardDesign(),
            miCardImageCarga(),
          ],
        ));
  }
}

Card miCard() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Teatro junto a tus niños',
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(
              'No te pierdas la oportunidad de poder aprender teatro junto a los pequeños de casa'),
          leading: Icon(Icons.theater_comedy),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            MaterialButton(
                minWidth: 10,
                height: 20,
                onPressed: () => {},
                child: Text(
                  'Aceptar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            MaterialButton(
                minWidth: 10,
                height: 20,
                onPressed: () => {},
                child: Text(
                  'Cancelar',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        )
      ],
    ),
  );
}

Card miCardImage() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://s1.significados.com/foto/valores-familiares_bg.jpg?auto_optimize=low&width=655'),
        ),
        Container(
          padding: EdgeInsets.all(25),
          child: Text('VALORES EN FAMILIA',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
      ],
    ),
  );
}

Card miCardImageCarga() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://img.remediosdigitales.com/7f8dae/istock-466265249/1366_2000.jpg'),
          placeholder: AssetImage("assets/images/loading.gif"),
          fit: BoxFit.cover,
          height: 260,
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Text(
            'Mamá y Papá: AMOR SIN MEDIDAS',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    ),
  );
}

Card miCardDesign() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    color: Color(0xFFE6EE9C),
    child: Column(
      children: <Widget>[
        ListTile(
          contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
          title: Text('Creciendo con tus niños',
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(
              'CNH constituye un programa social impulsado por el gobierno central dirigido a familias de niños y niñas entre 0 a 36 meses con el objetivo de que este grupo de infantes desarrollen acciones educativas de calidad'),
          leading: Icon(Icons.hearing_outlined),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            MaterialButton(
                minWidth: 10,
                height: 20,
                onPressed: () => {},
                child: Text('ACEPTAR',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            MaterialButton(
                minWidth: 10,
                height: 20,
                onPressed: () => {},
                child: Text('CANCELAR',
                    style: TextStyle(fontWeight: FontWeight.bold)))
          ],
        )
      ],
    ),
  );
}
