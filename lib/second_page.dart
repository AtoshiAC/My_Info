import 'package:flutter/material.dart';
import 'package:image_practice/first_page.dart';
class Second_page extends StatefulWidget {
  const Second_page({super.key});

  @override
  State<Second_page> createState() => _Second_pageState();
}

class _Second_pageState extends State<Second_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Images",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Container(
        color: Colors.white70,
        child: Center(
          child: Column(
            children: [
              Text("Atoshi's Img:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),



              Image(
                height: 200,
                width: 200,
                image: AssetImage("images/AtoshiP.jpg"),
              ),
              Text("Company Logo:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Image(
                height: 200,
                  width: 200,
                  image: NetworkImage("https://scontent.fcgp6-1.fna.fbcdn.net/v/t39.30808-6/428607821_852689276871501_6899365383384486917_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=V_PqnOt4CzIAX_l9635&_nc_ht=scontent.fcgp6-1.fna&oh=00_AfDAjvHMGLi_CvVn99aDMYsMQ7BrWsf9wvH9nbMGZAwonw&oe=6609C140"),
              ),

              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.purple
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>First_page()));
                  },
                  child: Text("Back...",
                    style: TextStyle(color: Colors.white,fontSize: 18),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
