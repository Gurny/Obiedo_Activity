import 'package:flutter/material.dart';
import 'profile.dart';
import 'education.dart';
import 'skills.dart';
import 'interests.dart';
import 'contact.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Activity ni Grant',
              style: TextStyle(color: Colors.black),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Profile'),
                Tab(icon: Icon(Icons.school), text: 'Education'),
                Tab(icon: Icon(Icons.build), text: 'Skills'),
                Tab(icon: Icon(Icons.favorite), text: 'Interests'),
                Tab(icon: Icon(Icons.contact_mail), text: 'Contact'),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Color.fromRGBO(199, 54, 89,1),
              indicatorWeight: 4.0,
              labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
            ),
          ),
          body: const TabBarView(
            children: [
              Profile(),
              Education(),
              Skills(),
              Interests(),
              Contact(),
            ],
          ),
        ),
      ),
    );
  }
}
