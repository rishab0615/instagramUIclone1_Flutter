import 'package:flutter/material.dart';

class storiesSection extends StatelessWidget {
  const storiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      // color: Colors.purple,
      height: kToolbarHeight*2.3,
      child:SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin:EdgeInsets.only(right: 7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                      children:[ CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            // height: 30,
                            decoration: BoxDecoration(

                                color: Colors.blue,
                                shape: BoxShape.circle,
                                border:Border.all(color: Colors.white,width: 2)
                            ),
                            child: Center(
                              child: Icon(Icons.add,color: Colors.white,size: 20,),
                            ),
                          ),
                        )
                      ]
                  ),
                  Text("Your story",overflow: TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.w400,fontSize:13 ),)

                ],
              ),
            ),
            storyImage("https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600","autman99"),
            storyImage("https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=600","its_sasuke"),
            storyImage("https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=300","uncle_tiger12"),
            storyImage("https://images.pexels.com/photos/789822/pexels-photo-789822.jpeg?auto=compress&cs=tinysrgb&w=300","official_emilia"),
            storyImage("https://images.pexels.com/photos/531474/pexels-photo-531474.jpeg?auto=compress&cs=tinysrgb&w=300","earth_page"),

          ],
        ),
      ),
    );;
  }

  Widget storyImage(String s,String t) {
    return Container(
      margin:EdgeInsets.only(left: 7,right: 7),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius:37,
            backgroundImage: NetworkImage(s),
          ),
          Text(t,style: TextStyle(fontWeight: FontWeight.w400,fontSize:13))
        ],
      ),
    );
  }
}
