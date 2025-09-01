import 'package:flutter/material.dart';
class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Image.network('https://images.unsplash.com/photo-1526779259212-939e64788e3c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D'),
        ElevatedButton(onPressed: (){}, child: Text('hello',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w700),))
        ],
      )
    );
  }
}
