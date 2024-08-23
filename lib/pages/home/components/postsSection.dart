import 'package:flutter/material.dart';

class postsSection extends StatelessWidget {
  const postsSection({super.key});

  @override
  Widget build(BuildContext context) {


    Map profileDetails = {
      'dp': ["https://images.pexels.com/photos/531474/pexels-photo-531474.jpeg?auto=compress&cs=tinysrgb&w=300",
             "https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=600",
             "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=600",
             "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=300",
             "https://images.pexels.com/photos/789822/pexels-photo-789822.jpeg?auto=compress&cs=tinysrgb&w=300"
            ],
      'username': ["earth_page", "its_sasuke", "autman99", "uncle_tiger12","official_emilia"],
      'location': ["Arefu, AG, Romania", "New York", "Sicily", "Europe","India"],
      'postImage': ["https://images.pexels.com/photos/1271619/pexels-photo-1271619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                "https://images.pexels.com/photos/14499730/pexels-photo-14499730.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
        "https://images.pexels.com/photos/27362169/pexels-photo-27362169/free-photo-of-black-and-white-photograph-of-mountains-covered-in-fog.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
        "https://images.pexels.com/photos/27244361/pexels-photo-27244361/free-photo-of-lake-viti-on-iceland.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
        "https://images.pexels.com/photos/27786532/pexels-photo-27786532/free-photo-of-a-man-in-a-red-jacket-and-white-pants.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load"
      ],
      'caption':["  Climbing to new heights and finding my peace",
                 "woeqp pqowe pokqwek opqwekp",
                 "dajksd; ;lksa;ldk l;sk",
                 "jhasdk hbdas jg ajd g",
                 "kjasld  lkjasd j "
      ],
      'likes':["997","32","435","657","8"],
      'time':["1 hour ago","2 hours ago","2 hours ago","3 hours ago","4 hours ago"]
    };


    return  ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: profileDetails['time'].length, // Number of posts
      itemBuilder: (context, index) {
        return Column(
          children: [
            postHeader(profileDetails,index),
            postImage(context,profileDetails,index),
            interactionSection(context,profileDetails,index),
            likesAndCaption(profileDetails,index)
          ],
        );
      },
    );
  }

  Widget postHeader(Map profileDetails,int index) {
    return Container(
      height: kToolbarHeight,
      // color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 300,
            // color: Colors.grey,
            height: 60,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      profileDetails['dp'][index]),
                  radius: 20,
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      profileDetails['username'][index],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(profileDetails['location'][index]),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            // color: Colors.grey,
            height: 60,
            child: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ),
        ],
      ),
    );
  }

  Widget postImage(BuildContext context,profileDetails,int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      // color: Colors.red,
      child: Image.network(
        profileDetails['postImage'][index],
        fit: BoxFit.cover,
      ),
    );
  }

  Widget interactionSection(BuildContext context,Map profileDetails,int index) {
    return Container(
      height: kToolbarHeight,
      // color: Colors.orange,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.zero,
            margin:EdgeInsets.zero ,
            width: MediaQuery.of(context).size.width/1.7,
            // color: Colors.red,
            height: 60,
            // color: Colors.lightBlue,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(onPressed: () {}, icon: SizedBox(height:25, child: Image.asset("assets/icons/like.png"))),
                    Text(profileDetails['likes'][index],),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: SizedBox(height:25, child: Image.asset("assets/icons/chat.png"))),
                    Text("73"),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: SizedBox(height:25,child: Image.asset("assets/icons/send.png"))),
                    Text("10"),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            // color: Colors.lightBlue,
            child: Center(
              child: IconButton(onPressed: () {}, icon: SizedBox(height:20, child: Image.asset("assets/icons/bookmark.png"))),
            ),
          ),
        ],
      ),
    );
  }


  Widget likesAndCaption(Map  profileDetails,int index){

    return Container(height:kToolbarHeight*2.6,padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Container(
              margin: EdgeInsets.only(bottom:5),
              width: 50,
              // padding: ,
              // color: Colors.red,
              child: Stack(children: [
                Positioned(
                    right: 0,
                    child: CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=300"),radius: 10,)),
                Positioned(
                    right: 15,
                    child: CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/789822/pexels-photo-789822.jpeg?auto=compress&cs=tinysrgb&w=300"),radius: 10,)),
                CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/103123/pexels-photo-103123.jpeg?auto=compress&cs=tinysrgb&w=600"),radius: 10,),
              ],),
            ),
            RichText(text: TextSpan(children:[
              TextSpan(text:"  Liked by",style: TextStyle(color: Colors.black)),
              TextSpan(text:" its_sasuke ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black) ),
              TextSpan(text:"and ${profileDetails['likes'][index]} others",style: TextStyle(color: Colors.black)),

            ]),)
          ],),
          RichText(text:TextSpan(
              children: [
                TextSpan(text: profileDetails['username'][index],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
                TextSpan(text:profileDetails['caption'][index],style: TextStyle(color: Colors.black)),

              ]
          ) ),
          TextButton(onPressed: (){}, child: Text("View all comments",style: TextStyle(color: Colors.grey),)),
          Text(profileDetails['time'][index],style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }
}
