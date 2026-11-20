import 'package:flutter/material.dart';

class AudioLibraryProfileScreen extends StatelessWidget {
  const AudioLibraryProfileScreen({super.key});

  // App Theme Colors matching project palette
  static const Color primaryDark = Color(0xFF20374A);
  static const Color primaryBlue = Color(0xFF1565C0);
  static const Color accentGreen = Color(0xFF00CF95);
  static const Color accentPink = Color(0xFFFE69AE);
  static const Color cardBg = Color(0xFFF5F7FA);
  static const Color textDark = Color(0xFF1F2937);
  static const Color textMuted = Color(0xFF6B7280);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[100],
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Profile',
          style: TextStyle(
            color: primaryDark,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined, color: primaryDark),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          children: [
            // Header Profile Section
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: accentGreen, width: 3),
                        ),
                        child: const CircleAvatar(
                          radius: 46,
                          backgroundColor: primaryDark,
                          child: Icon(Icons.person, size: 50, color: Colors.white),
                        ),
                      ),
                      Positioned(
                        bottom: 4,
                        right: 4,
                        child: Container(
                          padding: const EdgeInsets.all(6),
                          decoration: const BoxDecoration(
                            color: primaryBlue,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.edit,
                            size: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Audio Enthusiast',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textDark,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'user@example.com',
                    style: TextStyle(
                      fontSize: 14,
                      color: textMuted,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Statistics Section
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardBg,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _StatItem(count: '24', label: 'Audiobooks'),
                  _VerticalDivider(),
                  _StatItem(count: '142h', label: 'Listen Time'),
                  _VerticalDivider(),
                  _StatItem(count: '18', label: 'Saved'),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Currently Listening Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: primaryDark,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: accentPink.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(Icons.headphones, color: accentPink),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Resume Listening',
                          style: TextStyle(
                            color: accentGreen,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'The Art of Listening',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: accentGreen,
                    child: Icon(Icons.play_arrow, color: primaryDark),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Options List
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Library Settings',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textDark,
                ),
              ),
            ),
            const SizedBox(height: 12),

            _OptionTile(
              icon: Icons.download_done_rounded,
              title: 'Downloaded Titles',
              subtitle: '12 files available offline',
              onTap: () {},
            ),
            _OptionTile(
              icon: Icons.history_rounded,
              title: 'Listening History',
              subtitle: 'View recent audio activity',
              onTap: () {},
            ),
            _OptionTile(
              icon: Icons.bookmark_outline_rounded,
              title: 'Bookmarks & Notes',
              subtitle: '34 saved markers',
              onTap: () {},
            ),
            _OptionTile(
              icon: Icons.equalizer_rounded,
              title: 'Audio Equalizer',
              subtitle: 'Default (Standard)',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final String count;
  final String label;

  const _StatItem({required this.count, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AudioLibraryProfileScreen.primaryDark,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            color: AudioLibraryProfileScreen.textMuted,
          ),
        ),
      ],
    );
  }
}

class _VerticalDivider extends StatelessWidget {
  const _VerticalDivider();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 1,
      color: Colors.grey.shade300,
    );
  }
}

class _OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _OptionTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      elevation: 0,
      color: AudioLibraryProfileScreen.cardBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        onTap: onTap,
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: AudioLibraryProfileScreen.primaryBlue),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: AudioLibraryProfileScreen.textDark,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            color: AudioLibraryProfileScreen.textMuted,
            fontSize: 12,
          ),
        ),
        trailing: const Icon(
          Icons.chevron_right_rounded,
          color: AudioLibraryProfileScreen.textMuted,
        ),
      ),
    );
  }
}