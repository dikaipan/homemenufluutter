/*******************************************************************************
 * Copyright(c) 2020 Authors @dikaipan. All rights reserved.
 ******************************************************************************/

import 'dart:ui';
import 'package:home_menu_flutter/models/data.dart';
import 'package:home_menu_flutter/models/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color bgColor = Color(0xffF3F3F3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          //App bar menggunakan package silver App bar
          SliverAppBar(
            primary: true,
            expandedHeight: 250.0,
            pinned: true,
            floating: true,
            snap: false,
            elevation: 50,
            backgroundColor: Colors.deepPurple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                Static.appName,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(blurRadius: 10.05)]),
              ),
              background: Image.asset(
                "images/mekkah2.jpg",
                fit: BoxFit.cover,
              ),
            ),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.info_outline),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Colors.white60,
                            title: Text("Unnamed"),
                            content: Text("Made With 💙 In Jogja",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20)),
                          );
                        });
                  })
            ],
          ),
          //memberikan tampilan Kategori dari aplikasi dengan widget Silver Fill Remaining
          SliverFillRemaining(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              //membuat kolom widget di aplikasi
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Ayo Baca Quran",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          shadows: [Shadow(blurRadius: 01.02)]),
                    ),
                  ),
                  Divider(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        //memberikan event on tap di stack widget
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {
                            Fluttertoast.showToast(msg: "Iam Tapped");
                          },
                          child: kategory(
                            FontAwesomeIcons.quran,
                            "Al-Qur'an",
                            Colors.deepOrange.withOpacity(0.8),
                          ),
                        ),
                        // child:
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          child: kategory(
                            FontAwesomeIcons.list,
                            "Asmaulhusna",
                            Colors.indigo.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {
                            Fluttertoast.showToast(msg: "Iam Tapped");
                          },
                          child: kategory(
                            FontAwesomeIcons.book,
                            "Doa Harian",
                            Colors.green.withOpacity(0.8),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          splashColor: Colors.black,
                          onTap: () {},
                          child: kategory(
                            FontAwesomeIcons.youtube,
                            "Ceramah",
                            Colors.lightBlue.withOpacity(0.8),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Divider(),
                  Center()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
