import 'package:audio_library/features/home/audiobook/audio_book_details_screen.dart';
import 'package:flutter/material.dart';

class AudiobookHistoryItem {
  final String image;
  final String title;
  final String subtitle;

  const AudiobookHistoryItem({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  static const List<AudiobookHistoryItem> _history = [
    AudiobookHistoryItem(
      image: 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14634038-L.jpg',
      title: 'Twenty Years After',
      subtitle: 'Alexandre Dumas',
    ),
    AudiobookHistoryItem(
      image: 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/12073763-L.jpg',
      title: 'Courts and Criminals',
      subtitle: 'Arthur Cheney Train',
    ),
    AudiobookHistoryItem(
      image: 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/2892034-L.jpg',
      title: 'Modern American Prose Selections',
      subtitle: 'Unknown',
    ),
    AudiobookHistoryItem(
      image: 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/5790450-L.jpg',
      title: 'A Short History of English Printing, 1476-1898',
      subtitle: 'Henry Robert Plomer',
    ),
    AudiobookHistoryItem(
      image: 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/1972713-L.jpg',
      title: 'Intentions',
      subtitle: 'Oscar Wilde',
    ),
    AudiobookHistoryItem(
      image: 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/8977106-L.jpg',
      title: 'Peter Pan: [Peter and Wendy]',
      subtitle: 'J. M. (James Matthew) Barrie',
    ),
  ];

  bool _isExpanded = false;

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
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
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
              InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: () => setState(() => _isExpanded = !_isExpanded),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Row(
                    children: [
                      Text(
                        _isExpanded ? 'Show less' : 'View all',
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
                        _isExpanded
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
        const SizedBox(height: 14.0),
        if (_isExpanded)
          _buildExpandedList()
        else
          _buildHorizontalList(),
      ],
    );
  }

  Widget _buildHorizontalList() {
    return SizedBox(
      height: 275.0,
      child: ListView.builder(
        itemCount: _history.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        itemBuilder: (context, index) {
          final item = _history[index];
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
    );
  }

  Widget _buildExpandedList() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      itemCount: _history.length,
      separatorBuilder: (_, _) => const SizedBox(height: 12.0),
      itemBuilder: (context, index) {
        final item = _history[index];
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