import 'package:flutter/material.dart';
import 'package:flutter_app/account_page.dart';
import 'package:flutter_app/settings_page.dart';
import 'package:flutter_app/travel_page.dart';
import 'login_page.dart';
import 'home_page_back.dart';
import 'home_page_category.dart';
import 'package:flutter_app/model/category.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';
import 'package:flutter_app/model/event.dart';
import 'home_page_event.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 10,
        title: Text(' F U N A P P '),
        actions: [
          TextButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage())),
            child: const Text('Çıkış'),
            style: TextButton.styleFrom(foregroundColor: Colors.white),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          padding: const EdgeInsets.all(50),
          color: Colors.deepPurple[300],
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Image.asset(
                    "assets/images/map.png",
                    width: 80,
                    height: 80,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  'Anasayfa',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.play_lesson_outlined, color: Colors.white),
                title: Text(
                  'Gezi Rehberi',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TravelPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle, color: Colors.white),
                title: Text(
                  'Profil',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AccountPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text(
                  'Ayarlar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              ),
            ],
          ),
        ),
      ),
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: Stack(
          children: [
            HomePageBack(
              screenHeight: MediaQuery.of(context).size.height,
            ),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        'NABER ? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        'Senin için bir şeyler hazırladım... ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Consumer<AppState>(
                      builder: (context, appState, _) => SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (final category in categories)
                              CategoryWidget(category: category),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Consumer<AppState>(
                      builder: (context, appState, _) => Column(
                        children: [
                          for (final event in events.where((e) => e.categoryIds
                              .contains(appState.selectedCategoryId)))
                            EventWidget(event: event,),
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
