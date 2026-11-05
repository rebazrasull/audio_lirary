import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'welcome back,',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.0
              ),
            ),
            Text(
              'Audio Library',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              ),
              )
          ],
        ),
        elevation: 0.0,
        actionsPadding: EdgeInsets.symmetric(
          horizontal: 12.0
        ),
        actions: [      
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0
            ),
            child: IconButton(
              onPressed:() {
              
            } ,
             icon:Icon(
              Icons.notifications_outlined,
              size: 27,
              )
             ),
          ),
           CircleAvatar(
            radius: 18,
            backgroundColor: Color(0xFF6C5CE7),
            child: Text(
              'R',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
              ),
           )
        ],
      ),
      body: SafeArea(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
           
          ],
        ),
      ),
    );
  }
}