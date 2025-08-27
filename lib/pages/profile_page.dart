import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('thevicstyles'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red,
                        width: 4.0,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 50,
                        backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [

                      Column(
                        children: [
                          Column(
                            children: [
                              Text('5353',style: TextStyle(color: Colors.black),),
                              Text('Posts'),
                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Column(
                        children: [
                          Text('6363'),
                          Text('gyydd')
                        ],
                      ),

                    ],
                  ),
                  Column()
                ],
                
              ),
            ),
          ],
        ),

      )),
    );
  }

}
