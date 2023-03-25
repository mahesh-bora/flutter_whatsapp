import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/pages/call_screen.dart';
import 'package:flutter_whatsapp/pages/camera_screen.dart';
import 'package:flutter_whatsapp/pages/chat_screen.dart';
import 'package:flutter_whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget{
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        elevation: 0.7,
        backgroundColor: Colors.teal ,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs:const <Widget>[
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text:"CALLS"
            )
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
          new Icon(Icons.more_vert)],
      ),
      body: new TabBarView(
          controller: _tabController,
      children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).colorScheme.secondary,
        child: new Icon(Icons.message),
        onPressed: ()=> print("Open Chats"),
    ),
    );
  }
}