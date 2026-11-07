import 'package:audio_library/features/home/widget/all_screen.dart';
import 'package:audio_library/features/home/widget/new_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategoryIndex = 0;
  final List<String> categories = ['All', 'Audiobooks', 'Podcasts', 'Music', 'Summaries'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.brown.shade200,
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
             labelColor: Colors.black,
              unselectedLabelColor: Colors.grey[600],
              indicatorColor: Colors.black,         
              indicatorWeight: 3,
             // overlayColor: WidgetStateColor.transparent,
             overlayColor: WidgetStateProperty.all(Colors.transparent),
              labelStyle:TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
               ),
              tabs: [
             Tab(icon: Icon(Icons.grid_view_rounded), text: 'All'),
             Tab(icon: Icon(Icons.new_releases_outlined), text: 'New'),
             Tab(icon: Icon(Icons.auto_stories_rounded), text: 'Story'),
             ]
            ),
            SizedBox(
              height: 18.0,
            ),
            Expanded(
              child: TabBarView(
                children: [
                 Expanded(child: AllScreen()),
                 Expanded(child: NewScreen()),
                  Expanded(child:Center(
            child: Text(
              'It Will Be Available Soon .....',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              )
             ),
            ),
                ]
                  )
                )
            
          ],
        ),
      ),
    );
  }
}