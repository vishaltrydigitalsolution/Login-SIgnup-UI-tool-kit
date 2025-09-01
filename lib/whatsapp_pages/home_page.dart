/*import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'whatsapp_controller.dart';
class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WhatsappController());
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'WHATSAPP',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w700,
              color: Colors.lightGreen,
            ),
          ),
          actions: [
            Icon(Icons.qr_code_scanner, color: Colors.black87),
            SizedBox(width: 15),
            Icon(Icons.camera_alt_outlined, color: Colors.black87),
            SizedBox(width: 15),
            Icon(Icons.more_vert, color: Colors.black87),
            SizedBox(width: 15),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Ask Meta AI or Search',
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chats.length,
                itemBuilder: (context, index) {
                  var chat = chats[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/girl.png'),
                    ),
                    title: Text(
                      chat["name"],
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Row(
                      children: [
                        //if (chat["is call"])
                        Icon(Icons.videocam, size: 16, color: Colors.grey),
                        //if (chat['is call']) SizedBox(height: 5),
                        Text(chat['message']),
                      ],
                    ),
                    trailing: Text(
                      chat['time'],
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightGreen, onPressed: () {},
          child: Icon(Icons.add, color: Colors.black87,),),

      );
    }
    );

  }
}

 */

