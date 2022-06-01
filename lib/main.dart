import 'package:flutter/material.dart';
import 'package:mtestsocialmedia/chat/chat.dart';
import 'package:mtestsocialmedia/feed/feed.dart';

import 'notification/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: const Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

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
    tbcontrol = TabController(length: 2, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Feeds"),
        actions: [
          PopupMenuButton(
            itemBuilder: (popup) {
              return [
                PopupMenuItem(
                  child: Text("New Group"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return Notification_list();
                        },
                      ),
                    );
                  },
                ),
                PopupMenuItem(child: Text("Feeds")),
                PopupMenuItem(child: Text("Notification")),
                PopupMenuItem(child: Text("Settings"))
              ];
            },
            icon: Icon(Icons.filter_list),
          )
        ],
      ),
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
                ],
              ),
            ),
          ],
        ),
      ),
      //Notification_list() ,
      bottomNavigationBar: SizedBox(
        //height: 10.0,
        child: Container(
          color: Color(0xfF2EBE9),
          width: MediaQuery.of(context).size.width,
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: InkWell(
                  onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return chatdata();
              },
            ),
          ),        
                  child: Icon(Icons.message, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Icon(Icons.group, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Icon(Icons.home, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Icon(Icons.notifications_none, color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Icon(
                  Icons.account_circle_sharp,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
