import 'package:flutter/material.dart';
import 'package:whatsapp/widget/appels_screen.dart';
import 'package:whatsapp/widget/camera_screen.dart';
import 'package:whatsapp/widget/discussion_screen.dart';
import 'package:whatsapp/widget/status_screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075e54),
            title: Text(
              'Whatsapp',
              style: TextStyle(color: Colors.white),
            ),
            bottom:
                TabBar(isScrollable: true, indicatorColor: Colors.white, tabs: [
              IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        width: 45,
                        child: Text(
                          'DISCUSS',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 5),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 10,
                        backgroundColor: Colors.white,
                        child: Text(
                          '65',
                          style:
                              TextStyle(color: Color(0xff075e54), fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('STATUT'),
                    ],
                  ),
                  SizedBox(width: 2),
                  Column(
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 4,
                        backgroundColor: Colors.white.withOpacity(0.4),
                      ),
                    ],
                  ),
                ],
              ),
              Text('APPELS'),
            ]),
            actions: <Widget>[
              IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ],
          ),
          body: TabBarView(children: [
            Camera(),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, i) {
                return Discussion();
              },
            ),
            ListView.builder(
              itemCount: 1,
              itemBuilder: (context, i) {
                return Statuts();
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, i) {
                return Appels();
              },
            ),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.comment),
            backgroundColor: Colors.green,
          ),
        ),
      ),
    );
  }
}
