import 'package:flutter/material.dart';
import 'login_page.dart';
import 'main_page.dart';
import 'settings_page.dart';
import 'account_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class TravelPage extends StatefulWidget {
  const TravelPage({Key? key}) : super(key: key);

  @override
  State<TravelPage> createState() => _TravelPageState();
}

class _TravelPageState extends State<TravelPage> {
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
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Gezi Rehberin',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.search,
                  color: Colors.deepPurple,
                )
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(height: 40),


            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('İZMİR'),
                        content: Column(
                          children: [
                            Text('KORDON'),
                            Text('ÇEŞME-ALAÇATI'),
                            Text('İZMİR FOÇA'),
                            Text('EFES ANTİK KENTİ'),
                            Text('ŞİRİNCE-SELÇUK'),
                            Text('KIBRIS ŞEHİTLERİ CADDESİ'),
                            Text('GAZİ KADINLAR SOKAĞI'),
                            Text('KEMERALTI ÇARŞISI'),
                            Text('KONAK MEYDANI'),
                            Text('DARIO MORENO SOKAĞI'),
                            Text('İZMİR SAAT KULESİ'),
                            Text('TARİHİ ASANSÖR'),
                            Text('KIZLARAĞASI HANI'),
                            Text('KONAK YALI CAMİİ'),
                            Text('EGE ÜNİVERSİTESİ BOTONİK BAHÇESİ'),
                            Text('İZMİR DOĞAL YAŞAM PARKI'),
                            Text('SASALI KENT ORMANI'),
                            Text('LUNAPARK İZMİR'),
                            Text('KÜLTÜRPARK İZMİR'),
                            Text('TARİHİ HAVAGAZI FABRİKASI'),
                            Text('KARAGÖL TABİAT PARKI'),
                            Text('ATATÜRK MÜZESİ'),
                          ],),);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'İZMİR',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),


            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('MANİSA'),
                        content: Column(
                          children: [
                            Text('SPİL DAĞI'),
                            Text('AĞLAYAN KAYA'),
                            Text('MANİSA KALESİ'),
                            Text('MURADİYE CAMİİ'),
                            Text('MANİSA KALESİ'),
                            Text('TIP TARİHİ MÜZESİ'),
                            Text('YENİ HAN'),
                            Text('TABİAT PARKI'),
                            Text('AİGAİ ANTİK KENTİ'),
                            Text('THYATEİRA TEPE MEZARLIĞI'),
                            Text('SARDİS ANTİK KENTİ'),
                            Text('TARİHİ KULA EVLERİ'),
                            Text('KULA PERİ BACALARI'),
                            Text('PHİLADELPHİA ST. JEAN KİLİSESİ'),
                            Text('MANİSA MEVLEVİHANESİ'),
                          ],),);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MANİSA',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('AYDIN'),
                        content: Column(
                          children: [
                            Text('GÜVERCİN ADA KALESİ'),
                            Text('ARKEOLOJİ MÜZESİ'),
                            Text('KARACASU ETNOGRAFYA MÜZESİ'),
                            Text('MİLLET MÜZESİ'),
                            Text('AFRODİSİAS MÜZESİ'),
                            Text('ALTINKUM PLAJI'),
                            Text('AKBÜK PLAJI'),
                            Text('TAVŞANBURUN TABİAT PARKI'),
                            Text('AKVARYUM KOYU'),
                          ],),);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AYDIN',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('DENİZLİ'),
                        content: Column(
                          children: [
                            Text('LAODİCEA'),
                            Text('HİERAPOLİS ARKOLOJİ MÜZESİ'),
                            Text('KARAHAYİT'),
                            Text('HONOZ DAĞI MİLLİ PARKI YOLU'),
                            Text('FORUM ÇAMLIK'),
                            Text('TRİPOLİS ANTİK KENTİ'),
                            Text('ORNAZ VADİ'),
                            Text('PAMUKKALE TRAVERTENLERİ'),
                            Text('İNCEĞİZ KANYONU'),
                          ],
                        ),
                      );
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'DENİZLİ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),


            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('MUĞLA'),
                        content: Column(
                          children: [
                            Text('BODRUM'),
                            Text('MARMARİS'),
                            Text('FETHİYE'),
                            Text('ÖLÜDENİZ'),
                            Text('DATÇA'),
                            Text('DALAMAN'),
                            Text('MİLAS'),
                            Text('YALIKAVAK'),
                            Text('KELEBEKLER VADİSİ'),
                            Text('HİSARÖNÜ'),
                            Text('CENNET KOYU '),
                            Text('SEDİR ADASI'),
                            Text('GİZLİKENT ŞELALESİ'),
                            Text('ANİSDOS ANTİK KENTİ'),
                            Text('AMOS ANTİK KENTİ'),
                          ],),);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MUĞLA',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),


            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('AFYONKARAHİSAR'),
                        content: Column(
                          children: [
                            Text('AFYONKARAHİSAR KALESİ'),
                            Text('FRİG VADİSİ'),
                            Text('İSCEHİSAR PERİ BACALARI'),
                            Text('ANITKAYA ŞEHİTLİĞİ'),
                            Text('KIRKGÖZ KÖPRÜSÜ'),
                            Text('TARİHİ BEDESTEN ÇARŞISI'),
                            Text('KURT İNİ MAĞRASI'),
                            Text('HAŞHAŞ TARLALARI'),
                            Text('ÖMER KAPLICASI'),
                            Text('APAMEİRA ANTİK KENTİ'),
                            Text('AMORİUM ANTİK KENTİ'),
                            Text('ULU CAMİİ'),
                            Text('AFYON KERVANSARAY'),
                          ],),);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'AFYONKARAHİSAR',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),


            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('KÜTAHYA'),
                        content: Column(
                          children: [
                            Text('AİZONAİ ANTİK KENTİ'),
                            Text('SAAT KULESİ'),
                            Text('ULU CAMİİ'),
                            Text('KÜTAHYA KALESİ'),
                            Text('SARI ÇİÇEK YAYLASI'),
                            Text('ÇİNİ MÜZESİ'),
                            Text('ARKEOLOJİ MÜZESİ'),
                            Text('DOMONİÇ ORMANLARI'),
                            Text('FİRİGYA VADİSİ'),
                          ],),);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'KÜTAHYA',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('UŞAK'),
                        content: Column(
                          children: [
                            Text('ULUBEY KANYONLARI'),
                            Text('TAŞ YARAN VADİSİ'),
                            Text('TARİHİ UŞAK EVLERİ'),
                            Text('ZAFER ANITI'),
                            Text('ARKEOLOJİ MÜZESİ'),
                            Text('HALI KİLİM MÜZESİ'),
                            Text('KENT TARİHİ MÜZESİ'),
                            Text('PAŞA HANI'),
                            Text('ATAPARK'),
                          ],),);
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'UŞAK',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
