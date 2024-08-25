import 'package:flutter/material.dart';

class bottomNav extends StatelessWidget {
 const  bottomNav({super.key});



  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: kToolbarHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bNavIcon("assets/icons/icons8-home-64.png",(){Navigator.pushNamed(context,'/home');}),
          bNavIcon("assets/icons/search.png",(){Navigator.pushNamed(context,'/explore');}),
          bNavIcon("assets/icons/add.png",(){}),
          bNavIcon("assets/icons/icons8-instagram-reels-64.png",(){}),
          GestureDetector(
           onTap: (){Navigator.pushNamed(context,'/profile');}  ,
          child: CircleAvatar(
              backgroundImage: NetworkImage("https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600"),
              radius: 20,
            ),
          )

        ],
      ),
    );
  }
  Widget bNavIcon(String s,onpress) {
    return IconButton(onPressed: onpress, icon:SizedBox(height:25,child: Image.asset(s))) ;
  }}


