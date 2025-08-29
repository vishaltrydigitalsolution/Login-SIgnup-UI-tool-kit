import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red, width: 4.0),
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/images/profile.png',
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                '3,022',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text('Posts', style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                '67.6k',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text('Followers', style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Text(
                                '2,454',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text('Following', style: TextStyle(fontSize: 15)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vic Styles',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text('Digital creator'),
                          RichText(
                            text: TextSpan(
                              text: 'Founder',
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: '@blackgirlsmoke',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                                TextSpan(
                                  text: ' & ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: '@gooddayfloor',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: '1/2',
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: '@kontentqueens',
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Sustainble fashion,clean beauty,wellness,\neco-ravel',
                              style: TextStyle(color: Colors.black),
                              children: [
                                TextSpan(
                                  text: '....more',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Message',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 35,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.person_add,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 29,
                              backgroundImage: AssetImage(
                                'assets/images/girl.png',
                              ),
                            ),
                            SizedBox(height: 5),
                            Text('hello'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        tabs: [
                          Tab(icon: Icon(Icons.grid_4x4_rounded),),
                          Tab(icon: Icon(Icons.add)),
                          Tab(icon: Icon(Icons.bookmark_border)),
                        ],
                      ),
                      SizedBox(
                        height: 400,
                        child: TabBarView(
                          children: [
                            GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              itemCount: 20,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.network(
                                  'https://images.unsplash.com/photo-1603320045158-61d0dc0fbb33?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YW55fGVufDB8fDB8fHww$index',
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                            GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              itemCount: 20,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ63iFt76WP_ta1uQbDhJrcEj7Pe1iHQN6RE2WqW26MDLTZTvswgIVV2KpgM8hp7wE&s&ec=73068120$index',
                                  fit: BoxFit.contain,
                                );
                              },
                            ),
                            GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                              ),
                              itemCount: 20,
                              itemBuilder: (BuildContext context, int index) {
                                return Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXioErEFseivLb_A9lNkom0dPLpx8nX66ly9ddw1D-qVpaq1ghU5CIjpYJ6OOrkxY&s&ec=73068120$index',
                                  fit: BoxFit.cover,
                                );
                              },
                            ),
                           // Center(child: Text('save')),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
