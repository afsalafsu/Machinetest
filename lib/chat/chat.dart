import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mtestsocialmedia/chat/chattile.dart';
import 'package:mtestsocialmedia/feed/feed.dart';

class chatdata extends StatefulWidget {
  const chatdata({Key? key}) : super(key: key);

  @override
  State<chatdata> createState() => _chatdataState();
}

class _chatdataState extends State<chatdata>
with SingleTickerProviderStateMixin {
  late TabController ctabcontrol;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ctabcontrol=TabController(length: 2,initialIndex: 0, vsync: this) ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 228, 228, 228),
        title: TextField(
          decoration: InputDecoration(
            //labelText:"search",
          hintText: "Search",
          ),
        ),
        actions: [
        
        Icon(Icons.filter_list),

      ],
      bottom: TabBar(tabs: [
        Text("Chat",style: TextStyle(color: Colors.black),),
        Text("Group",style: TextStyle(color: Colors.black),)
      ],
      controller: ctabcontrol,
      ),
      ),
      
      body: TabBarView(
        controller: ctabcontrol,
        children: [
        chattiles(),
        Feed_page()
      ],
      ),
      

      // bottomNavigationBar: 
      // BottomNavigationBar(items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.message,color: Colors.blue),
      //       label: 'message',
      //       //backgroundColor: Colors.red,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.group,color: Colors.grey),
      //       label: 'Business',
      //       //backgroundColor: Colors.green,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home,color: Colors.grey),
      //       label: 'Business',
      //       //backgroundColor: Colors.green,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.notifications,color: Colors.grey),
      //       label: 'Business',
      //       //backgroundColor: Colors.green,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_sharp,color: Colors.grey,),
      //       label: 'Business',
      //       //backgroundColor: Colors.green,
      //     ), 
      // ]
      //     )

        //height: 10.0,
        //  Container(
        //   //color: Color(0xfF2EBE9),
        //   width: MediaQuery.of(context).size.width,
        //   child: Row(
        //     //crossAxisAlignment: CrossAxisAlignment.end,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(22.0),
        //         child: InkWell(
        //           onTap: () => Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) {
        //         return chatdata();
        //       },
        //     ),
        //   ),        
        //           child: Icon(Icons.message, color: Colors.blue),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(22.0),
        //         child: Icon(Icons.group, color: Colors.grey),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(22.0),
        //         child: Icon(Icons.home, color: Colors.grey),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(22.0),
        //         child: Icon(Icons.notifications_none, color: Colors.grey),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(22.0),
        //         child: Icon(
        //           Icons.account_circle_sharp,
        //           color: Colors.grey,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      
    );
  }
}