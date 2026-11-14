import 'package:audio_library/features/home/audiobook/audio_book_details_screen.dart';
import 'package:flutter/material.dart';

class Mystery extends StatefulWidget {
  const Mystery({super.key});

  @override
  State<Mystery> createState() => _MysteryState();
}

class _MysteryState extends State<Mystery> {
     final List<Map<String,String>> blography =[
        {
      'image': 'https://is1-ssl.mzstatic.com/image/thumb/Publication221/v4/b3/1e/78/b31e7839-2238-5a63-62b1-2cb371f8c9b5/1068540291.jpg/626x0w.webp',
      'title': 'My Mark Twain',
      'subtitle':'Restored Classics to Go Edition',
    },
    {
      'image':"https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14784097-L.jpg",
      'title': "Swann's Way",
      'subtitle':'Marcel Proust',
    },
    {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/13135842-L.jpg',
      'title': 'The Green Eyes of Bâst',
      'subtitle':'Sax Rohmer',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/8243932-L.jpg',
      'title': 'De profundis',
      'subtitle':'Oscar Wilde',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/8242137-L.jpg',
      'title': 'Salome',
      'subtitle':'Emma Marshall',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/875919-L.jpg',
      'title': 'Spell of Egypt',
      'subtitle':'Robert Hichens',
    },
   ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Mystery',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
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
                const Icon(
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
          height: 300.0, 
         child: ListView.builder(
        itemCount: blography.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        itemBuilder: (context, index) {
          final item = blography[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AudioBookDetailsScreen(
                    title: item['title'] ?? '',
                    image: item['image'] ?? '',
                     subtitle: item['subtitle'] ?? '',
                  ),
                ),
              );
            },
            child: Container(
              width: 132.0,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      item['image'] ?? '',
                      height: 200.0,
                      width: 132.0,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        height: 165.0,
                        width: 132.0,
                        color: Colors.grey[800],
                        child: const Icon(Icons.broken_image, color: Colors.white54),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['title'] ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        item['subtitle'] ??' ',
                         maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
           )
      ],
    );
  }
}