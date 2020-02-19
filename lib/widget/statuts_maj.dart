import 'package:flutter/material.dart';

class StatutsMaj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    maxRadius: 35,
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
                        'Davy aymard kouassi',
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
                                'Il y a 43 minutes',
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
              
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 95, right: 10),
          child: Divider(),
        ),
      ],
    );
  }
}
