import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stack_trace/stack_trace.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 20, bottom: 0, right: 20, top: 40),
                    child: CircleAvatar(
                      backgroundColor: Colors.deepPurple,
                      backgroundImage: AssetImage('assets/images/user.png'),
                      radius: 50,
                  ),
                ),
              ),
             Center(
               child: Container(
               padding: EdgeInsets.only(left: 20, bottom: 0, right: 20, top: 150),
               child: Text('Deneme Flutter',
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 20,
                 ),),
             ),),

              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 20, bottom: 0, right: 20, top: 180),
                  child: Text('MANİSA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey
                    ), ),
                ),),

              Center(
               child:Padding( padding: EdgeInsets.only(left: 20, bottom: 0, right: 20, top: 200),
                child: Divider(height: 15, thickness: 2,),
              ),),

              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 0, bottom: 0, right: 200, top: 250),
                  child: Text('KATILDIĞIM ETKİNLİKLER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                    ), ),
                ),),

              Center(
                child:Padding( padding: EdgeInsets.only(left: 20, bottom: 0, right: 20, top: 270),
                  child: Divider(height: 15, thickness: 2,),
                ),),

              Center(
                child: Container(
                  padding: EdgeInsets.only(left: 0, bottom: 0, right: 230, top: 290),
                  child: Text('Deneme Etkinlik',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                    ),
                  ),
                ),),





            ],
          ),
        ),
      ),
    );
  }
}
