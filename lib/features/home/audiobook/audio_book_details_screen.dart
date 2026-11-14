import 'package:audio_library/features/home/audiobook/widget/info_chip.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AudioBookDetailsScreen extends StatelessWidget {
  final String title;
  final String image;
  final String subtitle;

  const AudioBookDetailsScreen({
    super.key,
    this.title = 'Twenty Years After',
    this.image = 'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14634038-L.jpg',
    this.subtitle = 'Restored Classics to Go Edition',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.brown[100],
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'AudioBook',
          maxLines: 1,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actionsPadding: const EdgeInsets.symmetric(horizontal: 12.0),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.bookmark_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Responsive Cover Image Container
            Center(
              child: SizedBox(
                width: 180,
                height: 260,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.grey[300],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Center(
                        child: Icon(Icons.broken_image, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            
            // Title
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 6.0),

            // Subtitle
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                subtitle,
                maxLines: 2,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 12.0),

            // Rating Row
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Color(0xFFFFB800),
                  size: 24,
                ),
                SizedBox(width: 6.0),
                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1E293B),
                  ),
                ),
                SizedBox(width: 6),
                Text(
                  '(2.4k reviews)',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Info Chips Row
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InfoChip(
                  iconData: Icons.attach_money_rounded,
                  label: 'Free',
                  color: Color(0xFF22C55E),
                ),
                SizedBox(width: 8.0),
                InfoChip(
                  iconData: Icons.language_rounded,
                  label: 'English',
                  color: Color(0xFF3B82F6),
                ),
                SizedBox(width: 8.0),
                InfoChip(
                  iconData: Icons.category_outlined,
                  label: 'Fiction',
                  color: Color(0xFFA855F7),
                ),
              ],
            ),
            const SizedBox(height: 32.0),

            // Action Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                    size: 26.0,
                  ),
                  label: const Text(
                    'Play Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB),
                    minimumSize: const Size(172, 52),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEFF6FF),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.all(16),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.podcasts_rounded,
                      color: Color(0xFF2563EB),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}