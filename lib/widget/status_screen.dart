import 'package:flutter/material.dart';
import 'package:whatsapp/widget/statuts_maj.dart';

class Statuts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.black12.withOpacity(0.10),
      padding: EdgeInsets.only(top: 0),
      child: Column(
        children: <Widget>[
          Container(
            height: 80,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundImage: AssetImage('images/1.jpg'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Mon Statut',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 133,
                                child: Text(
                                  'Hier à 20:00',
                                  style: TextStyle(color: Colors.black54),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.more_horiz),
                        color: Color(0xff075e54),
                        iconSize: 30.0,
                        onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Récentes mises à jour',
                  style: TextStyle(
                      color: Colors.black45, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: ListView.builder(
                  itemCount: 15,
                  itemBuilder: (context, i) {
                    return StatutsMaj();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
