import 'package:flutter/material.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {
    final  List<Map<String, String>> history = [
    {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14634038-L.jpg',
      'title': 'Twenty Years After',
    },
    {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/4849549-L.jpg',
      'title': 'Art of War',
    },
    {
      'image': 'https://www.digitalbook.io/ia/archive.org/download/our_island_story_2_librivox/ourislandstory2_1012.jpg',
      'title': 'Our Island Story, Part 2',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/1736912-L.jpg',
      'title': 'China and the Chinese',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14634287-L.jpg',
      'title': 'Enchanted April',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/250371-L.jpg',
      'title': 'Scaramouche',
    },
  ];
   final List<Map<String,String>> blography =[
        {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/312194-L.jpg',
      'title': 'My Mark Twain',
    },
    {
      'image':"https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14784097-L.jpg",
      'title': "Swann's Way",
    },
    {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/94206-L.jpg',
      'title': 'Alexander the Great',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/8243932-L.jpg',
      'title': 'De Profundis',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/8242137-L.jpg',
      'title': 'Salome',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/5790740-L.jpg',
      'title': 'Spell of Egypt',
    },
   ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Section Header
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(
                  'History',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'View all',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                 Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                  size: 21,
                ),
              ],
            ),
          ),
           SizedBox(height: 12.0),
      
          SizedBox(
            height: 200.0, 
            child: ListView.builder(
              itemCount:  history.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                final item = history[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Container
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                           item['image']??'',
                          height: 150.0,
                          width: 132.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                   SizedBox(height: 8.0),
                    // Title Text
                     Padding(
                       padding: const EdgeInsets.symmetric(
                        horizontal: 12.0
                       ),
                       child: Text(
                        item['title']??'',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                       ),
                     ),
                  ],
                );
              },
            ),
          ),
      
          SizedBox(
            height: 12.0,
          ),
             Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                 Text(
                  'Blography',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                 Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'View all',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                 Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                  size: 21,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
             SizedBox(
            height: 200.0, 
            child: ListView.builder(
              itemCount: blography.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                  var blograph = blography[index];
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image Container
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          blograph['image']??'',
                          height: 150.0,
                          width: 132.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                   SizedBox(height: 8.0),
                    // Title Text
                     Padding(
                       padding: const EdgeInsets.symmetric(
                        horizontal: 12.0
                       ),
                       child: Text(
                        blograph['title']??'',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                       ),
                     ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}