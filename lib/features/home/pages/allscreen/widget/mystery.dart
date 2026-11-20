import 'package:audio_library/features/home/audiobook/audio_book_details_screen.dart';
import 'package:audio_library/features/home/pages/allscreen/widget/history%20.dart';
import 'package:flutter/material.dart';

class Mystery extends StatefulWidget {
  const Mystery({super.key});

  @override
  State<Mystery> createState() => _MysteryState();
}

class _MysteryState extends State<Mystery> {
  final List<AudiobookHistoryItem> _mysteryBooks = [
    AudiobookHistoryItem(
      image:
          'https://is1-ssl.mzstatic.com/image/thumb/Publication221/v4/b3/1e/78/b31e7839-2238-5a63-62b1-2cb371f8c9b5/1068540291.jpg/626x0w.webp',
      title: 'My Mark Twain',
      subtitle: 'Restored Classics to Go Edition',
    ),
    AudiobookHistoryItem(
      image:
          'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14784097-L.jpg',
      title: "Swann's Way",
      subtitle: 'Marcel Proust',
    ),
    AudiobookHistoryItem(
      image:
          'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/13135842-L.jpg',
      title: 'The Green Eyes of Bâst',
      subtitle: 'Sax Rohmer',
    ),
    AudiobookHistoryItem(
      image:
          'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/8243932-L.jpg',
      title: 'De profundis',
      subtitle: 'Oscar Wilde',
    ),
    AudiobookHistoryItem(
      image:
          'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/8242137-L.jpg',
      title: 'Salome',
      subtitle: 'Emma Marshall',
    ),
    AudiobookHistoryItem(
      image:
          'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/875919-L.jpg',
      title: 'Spell of Egypt',
      subtitle: 'Robert Hichens',
    ),
  ];

  bool isExpanded = false;

  void _openDetails(AudiobookHistoryItem item) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => AudioBookDetailsScreen(
          title: item.title,
          image: item.image,
          subtitle: item.subtitle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Header Row (Title & View All)
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
              InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: () => setState(() => isExpanded = !isExpanded),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Row(
                    children: [
                      Text(
                        isExpanded ? 'Show less' : 'View all',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 4),
                      Icon(
                        isExpanded
                            ? Icons.expand_less_outlined
                            : Icons.chevron_right_outlined,
                        color: Colors.white,
                        size: 21,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12.0),
        if (isExpanded)
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            itemCount: _mysteryBooks.length,
            separatorBuilder: (_, _) => const SizedBox(height: 12.0),
            itemBuilder: (context, index) {
              final item = _mysteryBooks[index];
              return InkWell(
                borderRadius: BorderRadius.circular(12.0),
                onTap: () => _openDetails(item),
                child: Row(
                  children: [
                    _CoverImage(
                      url: item.image,
                      width: 64.0,
                      height: 92.0,
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item.subtitle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right_outlined,
                      color: Colors.white54,
                    ),
                  ],
                ),
              );
            },
          )
        else
          SizedBox(
            height: 275.0,
            child: ListView.builder(
              itemCount: _mysteryBooks.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              itemBuilder: (context, index) {
                final item = _mysteryBooks[index];
                return GestureDetector(
                  onTap: () => _openDetails(item),
                  child: Container(
                    width: 132.0,
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _CoverImage(
                          url: item.image,
                          width: 132.0,
                          height: 200.0,
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          item.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          item.subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
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

class _CoverImage extends StatelessWidget {
  final String url;
  final double width;
  final double height;

  const _CoverImage({
    required this.url,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Image.network(
        url,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (_, _, _) => Container(
          width: width,
          height: height,
          color: Colors.grey[800],
          child: const Icon(
            Icons.broken_image,
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}