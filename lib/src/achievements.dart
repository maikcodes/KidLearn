import 'package:flutter/material.dart';
import 'package:flutter_application_gamifacion/src/dataStore/medalls.dart';

// ignore: must_be_immutable
class AchievementsScreem extends StatelessWidget {
  AchievementsScreem({Key? key}) : super(key: key);

  // List<Ogrenci> tumOgrenciler = List.generate(
  //   30,
  //   (index) => Ogrenci(
  //       index + 1, "Ogrenci Adi ${index + 1}", "Ogrenci Soyad ${index + 1}"),
  // );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            var oankiOgrenci = tumOgrenciler[index];
            return Card(
              color: oankiOgrenci.color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                  title: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5))),
                    child: Container(
                      color: oankiOgrenci.color.withOpacity(0.5),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Center(
                          child: Text(
                            oankiOgrenci.isim,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  subtitle: Card(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5))),
                    child: Container(
                      color: oankiOgrenci.color.withOpacity(0.5),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(oankiOgrenci.soyIsim),
                      ),
                    ),
                  ),
                  leading: Image.asset(
                    oankiOgrenci.icon,
                    width: 50,
                  )
                  // leading: oankiOgrenci.icon,
                  // leading: CircleAvatar(
                  //   child: Text(oankiOgrenci.id.toString()),
                  // ),
                  ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Color.fromARGB(200, 217, 217, 217),
              thickness: 2,
              indent: 20,
              endIndent: 10,
            );
          },
          itemCount: tumOgrenciler.length,
        ),
      ),
    );
  }
}

// class Ogrenci {
//   final int id;
//   final String icon;
//   final String isim;
//   final String soyIsim;
//   final Color color;

//   Ogrenci(this.id, this.icon, this.isim, this.soyIsim, this.color);
// }

// const assetsImagesAchievements = 'assets/images/achievements';
// List<Ogrenci> tumOgrenciler = [
//   Ogrenci(
//       1,
//       '$assetsImagesAchievements/medall.png',
//       "medalla 1",
//       "descripcion de la medalla 1 descripcion de la medalla 1 descripcion de la medalla 1 descripcion de la medalla 1",
//       const Color.fromRGBO(70, 121, 211, 50)),
//   Ogrenci(2, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 2", const Color.fromARGB(206, 238, 189, 43)),
//   Ogrenci(3, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 3", const Color.fromARGB(206, 215, 18, 185)),
//   Ogrenci(4, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 4", const Color.fromARGB(206, 15, 142, 87)),
//   Ogrenci(5, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 5", const Color.fromARGB(206, 44, 48, 54)),
//   Ogrenci(6, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 6", const Color.fromARGB(206, 255, 9, 169)),
//   Ogrenci(7, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 7", const Color.fromARGB(206, 7, 243, 243)),
//   Ogrenci(8, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 8", const Color.fromARGB(206, 252, 160, 20)),
//   Ogrenci(9, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 9", const Color.fromARGB(206, 11, 238, 7)),
//   Ogrenci(10, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 10", const Color.fromARGB(31, 3, 8, 17)),
//   Ogrenci(11, '$assetsImagesAchievements/medall.png', "medalla 1",
//       "descripcion de la medalla 11", const Color.fromARGB(206, 43, 7, 69)),

// // si fues icono icono
//   // Ogrenci(
//   //     12,
//   //     const Icon(
//   //       Icons.home,
//   //       color: Color.fromRGBO(255, 255, 255, 2),
//   //       size: 50,
//   //     ),
//   //     "medalla 1",
//   //     "descripcion de la medalla 12",
//   //     const Color.fromRGBO(70, 121, 211, 50)),
// ];
