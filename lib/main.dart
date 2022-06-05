import 'package:flutter/material.dart';
import 'package:mtestsocialmedia/chat/chat.dart';
import 'package:mtestsocialmedia/chat/chattile.dart';
import 'package:mtestsocialmedia/feed/feed.dart';

import 'notification/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
//String titlee="";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home:  Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
   Homescreen({Key? key}) : super(key: key);
String titlee="";
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController tbcontrol;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tbcontrol = TabController(length: 3, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey,
      //   title: Text(widget.titlee),
      //   actions: [
      //     PopupMenuButton(
      //       itemBuilder: (popup) {
      //         return [
      //           PopupMenuItem(
      //             child: Text("New Group"),
      //             onTap: () {
      //               Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                   builder: (_) {
      //                     return Notification_list();
      //                   },
      //                 ),
      //               );
      //             },
      //           ),
      //           PopupMenuItem(child: Text("Feeds")),
      //           PopupMenuItem(child: Text("Notification")),
      //           PopupMenuItem(child: Text("Settings"))
      //         ];
      //       },
      //       icon: Icon(Icons.filter_list),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height - 80,
              width: MediaQuery.of(context).size.width,
              child: TabBarView(
                controller: tbcontrol,
                children: [
                  
                 Notification_list(),
                  Feed_page(),
                  chatdata(),
                ],
              ),
            ),
          ],
        ),
      ),
      //Notification_list() ,
      bottomNavigationBar: 
      BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.message,color: Colors.blue),
            label: 'message',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group,color: Colors.grey),
            label: 'Business',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.grey),
            label: 'Business',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.grey),
            label: 'Business',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp,color: Colors.grey,),
            label: 'Business',
            //backgroundColor: Colors.green,
          ), 
      ]
          )
    );
  }
}
