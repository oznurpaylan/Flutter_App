import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main_page.dart';
import 'travel_page.dart';
import 'account_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                leading: Icon(Icons.play_lesson_outlined, color: Colors.white),
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

      body: Container(
        padding: EdgeInsets.only(left: 16, top:25, right: 16),
        child: ListView(
          children: [
            Text(
              'Ayarlar',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 40),
            Row(children: [
              Icon(Icons.person, color: Colors.deepPurple),
            ],),
            Divider(height: 15, thickness: 2,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Şifre Değiştir',
                  style: TextStyle(fontSize: 18, 
                      fontWeight: FontWeight.w500, 
                      color: Colors.grey[600]),
                ),
                Icon(Icons.arrow_forward_ios,
                color: Colors.grey[600],)
              ],),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Konum Ayarları',
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.grey[600],)
              ],),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dil Ayarları',
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.grey[600],)
              ],),
            SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gizlilik ve Güvenlik',
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                Icon(Icons.arrow_forward_ios,
                  color: Colors.grey[600],)
              ],),
            SizedBox(height: 40,),

            Row(children: [
              Icon(Icons.volume_up, color: Colors.deepPurple),
            ],),
            Divider(height: 15, thickness: 2,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bildirim',
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (bool val) {},
                  ),
                ),
              ],),
            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hesap Etkinliği',
                  style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]),
                ),
                Transform.scale(
                  scale: 0.7,
                  child: CupertinoSwitch(
                    value: true,
                    onChanged: (bool val) {},
                  ),
                ),
              ],),
          ],
        ),
      )
    );
  }
}