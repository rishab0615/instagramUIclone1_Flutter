import 'package:flutter/material.dart';
import 'package:instagramfontpageui/mainComponents/bottomNavbar.dart';

class explorePage extends StatelessWidget {
  explorePage({super.key});

  final List<String> postImage = [
    "https://images.pexels.com/photos/1271619/pexels-photo-1271619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14499730/pexels-photo-14499730.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27362169/pexels-photo-27362169/free-photo-of-black-and-white-photograph-of-mountains-covered-in-fog.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27244361/pexels-photo-27244361/free-photo-of-lake-viti-on-iceland.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27786532/pexels-photo-27786532/free-photo-of-a-man-in-a-red-jacket-and-white-pants.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.unsplash.com/photo-1724250267025-08b545ab90dc?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1686090450479-370d5ddf4de1?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724250973924-0209b9a64c13?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw8fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724140168197-f420ec273700?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw9fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724094505377-ac01c7813010?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1724179016304-972febc1cc43?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D",
    "https://images.pexels.com/photos/1271619/pexels-photo-1271619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14499730/pexels-photo-14499730.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27362169/pexels-photo-27362169/free-photo-of-black-and-white-photograph-of-mountains-covered-in-fog.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27244361/pexels-photo-27244361/free-photo-of-lake-viti-on-iceland.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27786532/pexels-photo-27786532/free-photo-of-a-man-in-a-red-jacket-and-white-pants.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.unsplash.com/photo-1724250267025-08b545ab90dc?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1686090450479-370d5ddf4de1?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724250973924-0209b9a64c13?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw8fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724140168197-f420ec273700?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw9fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724094505377-ac01c7813010?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1724179016304-972febc1cc43?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D",
    "https://images.pexels.com/photos/1271619/pexels-photo-1271619.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14499730/pexels-photo-14499730.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27362169/pexels-photo-27362169/free-photo-of-black-and-white-photograph-of-mountains-covered-in-fog.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27244361/pexels-photo-27244361/free-photo-of-lake-viti-on-iceland.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.pexels.com/photos/27786532/pexels-photo-27786532/free-photo-of-a-man-in-a-red-jacket-and-white-pants.jpeg?auto=compress&cs=tinysrgb&w=400&lazy=load",
    "https://images.unsplash.com/photo-1724250267025-08b545ab90dc?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw0fHx8ZW58MHx8fHx8",
    "https://plus.unsplash.com/premium_photo-1686090450479-370d5ddf4de1?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw3fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724250973924-0209b9a64c13?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw8fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724140168197-f420ec273700?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw9fHx8ZW58MHx8fHx8",
    "https://images.unsplash.com/photo-1724094505377-ac01c7813010?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D",
    "https://images.unsplash.com/photo-1724179016304-972febc1cc43?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemCount: postImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 150,

                    child: Stack(
                      children:[
                        Container(
                          width: 150,
                          height: 150,
                          child: Image.network(
                          postImage[index],
                          fit: BoxFit.cover,
                                                ),
                        ),
                        Positioned(right: 5,top: 5, child: SizedBox(height: 21,width: 21, child: Image.asset("assets/icons/reel.png")))
                      ]
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNav(),
    );
  }
}
