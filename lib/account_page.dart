import 'package:flutter/material.dart';
import 'package:flutter_app/add_page.dart';
import 'login_page.dart';
import 'main_page.dart';
import 'travel_page.dart';
import 'settings_page.dart';
import 'profile_uı.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
                title: Text('Anasayfa',
                  style: TextStyle(fontSize: 20,color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>MainPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.play_lesson_outlined, color: Colors.white,),
                title: Text('Gezi Rehberi',
                  style: TextStyle(fontSize: 20,color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>TravelPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle, color: Colors.white),
                title: Text('Profil',
                  style: TextStyle(fontSize: 20,color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>AccountPage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text('Ayarlar',
                  style: TextStyle(fontSize: 20,color: Colors.white),),
                onTap: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context)=>SettingsPage()));
                },
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddPage()),
    ),
        backgroundColor: Colors.deepPurple,
        child: const Icon(Icons.add),
      ),

      body: ProfileUI(),
    );
  }
}
