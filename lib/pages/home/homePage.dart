import 'package:flutter/material.dart';
import 'package:instagramfontpageui/mainComponents/bottomNavbar.dart';
import 'package:instagramfontpageui/pages/home/components/postsSection.dart';
import 'package:instagramfontpageui/pages/home/components/storiesSection.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 32),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SizedBox(height:25,child: Image.asset("assets/icons/like.png")),style: ButtonStyle(),),
          IconButton(onPressed: () {}, icon: SizedBox(height:25,child: Image.asset("assets/icons/send.png"))),
        ],
      ),
      body: ListView(
        children: [
          storiesSection(), // Stories Section
         postsSection()
        ],
      ),
      bottomNavigationBar: bottomNav(),
    );
  }
}
