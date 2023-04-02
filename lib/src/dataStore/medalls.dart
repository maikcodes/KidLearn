import 'package:flutter/material.dart';

class Ogrenci {
  final int id;
  final String icon;
  final String isim;
  final String soyIsim;
  final Color color;

  Ogrenci(this.id, this.icon, this.isim, this.soyIsim, this.color);
}

const assetsImagesAchievements = 'assets/images/achievements';
List<Ogrenci> tumOgrenciler = [
  // Ogrenci(
  //     1,
  //     '$assetsImagesAchievements/medall.png',
  //     "medalla 1",
  //     "descripcion de la medalla 1 descripcion de la medalla 1 descripcion de la medalla 1 descripcion de la medalla 1",
  //     const Color.fromRGBO(70, 121, 211, 50)),
  // Ogrenci(2, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 2", const Color.fromARGB(206, 238, 189, 43)),
  // Ogrenci(3, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 3", const Color.fromARGB(206, 215, 18, 185)),
  // Ogrenci(4, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 4", const Color.fromARGB(206, 15, 142, 87)),
  // Ogrenci(5, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 5", const Color.fromARGB(206, 44, 48, 54)),
  // Ogrenci(6, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 6", const Color.fromARGB(206, 255, 9, 169)),
  // Ogrenci(7, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 7", const Color.fromARGB(206, 7, 243, 243)),
  // Ogrenci(8, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 8", const Color.fromARGB(206, 252, 160, 20)),
  // Ogrenci(9, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 9", const Color.fromARGB(206, 11, 238, 7)),
  // Ogrenci(10, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 10", const Color.fromARGB(31, 3, 8, 17)),
  // Ogrenci(11, '$assetsImagesAchievements/medall.png', "medalla 1",
  //     "descripcion de la medalla 11", const Color.fromARGB(206, 43, 7, 69)),

// si fues icono icono
  // Ogrenci(
  //     12,
  //     const Icon(
  //       Icons.home,
  //       color: Color.fromRGBO(255, 255, 255, 2),
  //       size: 50,
  //     ),
  //     "medalla 1",
  //     "descripcion de la medalla 12",
  //     const Color.fromRGBO(70, 121, 211, 50)),
];
