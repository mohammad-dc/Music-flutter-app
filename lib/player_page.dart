import 'dart:ui';

import "package:flutter/material.dart";
import 'constant.dart';
import 'soft_control.dart';

class playerPage extends StatefulWidget {
  @override
  _playerPageState createState() => _playerPageState();
}

class _playerPageState extends State<playerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircularSoftButton(
                icon: Icon(Icons.arrow_back_ios),
              ),
              Text('Fav, Album'),
              CircularSoftButton(
                icon: Icon(Icons.more_horiz),
              ),
            ],
          ),
          Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 80,
                height: MediaQuery.of(context).size.width - 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width),
                    gradient: LinearGradient(
                        colors: [shadowColor, lightShadowColor],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                    boxShadow: [
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(8, 6),
                          blurRadius: 12),
                      BoxShadow(
                          color: lightShadowColor,
                          offset: Offset(-8, -6),
                          blurRadius: 12)
                    ]),
              ),
              Positioned(
                top: 10,
                left: 10,
                right: 10,
                bottom: 10,
                child: CircleAvatar(
                  backgroundImage: Image.asset('assets/image.jpg').image,
                ),
              )
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            'I Need Dollar (feat. Aloe Blacc)',
            style: TextStyle(
                fontSize: 24, fontFamily: 'Montserrat', color: textColor),
          ),
          Text(
            'Future',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                color: textColor),
          ),
          SizedBox(
            height: 32,
          ),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 32),
                width: double.infinity,
                height: 24,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: backgroundColor,
                    boxShadow: [
                      BoxShadow(
                          color: lightShadowColor,
                          offset: Offset(8, 6),
                          blurRadius: 12),
                      BoxShadow(
                          color: shadowColor,
                          offset: Offset(-8, -6),
                          blurRadius: 12)
                    ]),
              ),
              Positioned(
                top: 2,
                bottom: 2,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 36),
                  width: 200,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          colors: [summerDog1, summerDog2],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('2:46'), Text('4:02')],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircularSoftButton(icon: Icon(Icons.skip_previous)),
              CircularSoftButton(
                icon: Icon(
                  Icons.play_arrow,
                  size: 48,
                  color: Colors.green,
                ),
                radius: 48,
              ),
              CircularSoftButton(icon: Icon(Icons.skip_next)),
            ],
          )
        ],
      )),
    );
  }
}
