import 'package:flutter_application_gamifacion/src/dataStore/historieIndex.dart';

import 'achievements.dart';
import 'home.dart';
import 'notifications.dart';
import 'reading.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:iconsax/iconsax.dart';

var appBarTitle = "KidLearm";

// ignore: camel_case_types
class navBarbottom extends StatefulWidget {
  const navBarbottom({super.key});

  @override
  State<navBarbottom> createState() => _navBarbottomState();
}

// ignore: camel_case_types
class _navBarbottomState extends State<navBarbottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
          backgroundColor: const Color.fromARGB(255, 89, 140, 243),
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: _page,
              height: 60.0,
              items: const <Widget>[
                Icon(Icons.home, color: Colors.white, size: 25),
                Icon(Icons.book, color: Colors.white, size: 25),
                Icon(Iconsax.cup5, color: Colors.white, size: 25),
                Icon(Icons.notifications, color: Colors.white, size: 25),
              ],
              color: const Color.fromARGB(255, 89, 140, 243),
              buttonBackgroundColor: const Color.fromARGB(255, 89, 140, 243),
              backgroundColor: Colors.white,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 600),
              onTap: (int tappedIndex) {
                setState(() {
                  _showPage = _pageChooser(tappedIndex);
                });
              },
              letIndexChange: (index) => true,
            ),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        ));
  }

  final int _page = 0;

  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  //Creacion de pages para Bottom Nav Bar
  final AchievementsScreem _listAchievementsPage = AchievementsScreem();
  final HomeScreen _listHomePage = HomeScreen();
  final NotificationsScreen _listNotificationsPage = NotificationsScreen();
  final ReadingScreen _listReadingPage = ReadingScreen();

  Widget _showPage = HomeScreen();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        appBarTitle = "Actividades";
        return _listHomePage;
      case 1:
        if (historieIndex < 3) {
          historieIndex = historieIndex + 1;
        } else {
          historieIndex = 1;
        }

        appBarTitle = "Lecturas";
        return _listReadingPage;
      case 2:
        appBarTitle = "Medallas";
        return _listAchievementsPage;
      case 3:
        appBarTitle = "Notificaciones";
        return _listNotificationsPage;
      default:
        appBarTitle = "KidLearn";
        return _listHomePage;
    }
  }
}
