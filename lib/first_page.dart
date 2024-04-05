import 'package:image_practice/second_page.dart';
import 'package:flutter/material.dart';
class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('My Info'),
        leading: Icon(Icons.person),
        actions: [
          Icon(Icons.notifications),
          Icon(Icons.logout),
        ],
      ),
    body: Container(
      color: Colors.white70,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 150,
              width: 150,
              image: AssetImage("images/AtoshiP.jpg"),
            ),

            Text("Name:Atoshi Chowdhury",
            style: TextStyle(fontSize: 25,color:Colors.blueAccent ),
            ),
            Text("Designation: Intern Software Engineer",
            style: TextStyle(fontSize: 22,color: Colors.blue),
            ),
            Text("Company Name: ZemithhBD",
            style: TextStyle(fontSize: 22,color: Colors.orange),
            ),
            Text("Address:Cumilla",
            style: TextStyle(fontSize: 22,color: Colors.orange ),
            ),

            Image(
              height: 120,
              width: 120,
              image: NetworkImage("https://scontent.fcgp6-1.fna.fbcdn.net/v/t39.30808-6/428607821_852689276871501_6899365383384486917_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=V_PqnOt4CzIAX_l9635&_nc_ht=scontent.fcgp6-1.fna&oh=00_AfDAjvHMGLi_CvVn99aDMYsMQ7BrWsf9wvH9nbMGZAwonw&oe=6609C140"),
            ),

            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink
              ),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Second_page()));
                },
                child: Text("Next...",
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
