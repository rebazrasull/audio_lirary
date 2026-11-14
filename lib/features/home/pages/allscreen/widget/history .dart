import 'package:audio_library/features/home/audiobook/audio_book_details_screen.dart';
import 'package:flutter/material.dart';

class History  extends StatefulWidget {
  const History ({super.key});

  @override
  State<History > createState() => _HistoryState();
}

class _HistoryState extends State<History > {
    final  List<Map<String, String>> history = [
    {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14634038-L.jpg',
      'title': 'Twenty Years After',
      'subtitle':'Marcel Proust',
    },
    {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/4849549-L.jpg',
      'title': 'Art of War',
      'subtitle':'Marcel Proust',
    },
    {
      'image': 'https://www.digitalbook.io/ia/archive.org/download/our_island_story_2_librivox/ourislandstory2_1012.jpg',
      'title': 'Our Island Story, Part 2',
      'subtitle':'Marcel Proust',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/1736912-L.jpg',
      'title': 'China and the Chinese',
      'subtitle':'Marcel Proust',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14634287-L.jpg',
      'title': 'Enchanted April',
      'subtitle':'Marcel Proust',
    },
     {
      'image': 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/250371-L.jpg',
      'title': 'Scaramouche',
      'subtitle':'Marcel Proust',
    }
    ];
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'History',
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
        const SizedBox(height: 14.0),

        // History List
        SizedBox(
          height: 270.0, // Adjusted height to comfortably fit image and title
          child: ListView.builder(
            itemCount: history.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            itemBuilder: (context, index) {
              final item = history[index];
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
                            height: 200.0,
                            width: 132.0,
                            color: Colors.grey[800],
                            child: const Icon(Icons.broken_image, color: Colors.white54),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        item['title'] ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );


  }
}