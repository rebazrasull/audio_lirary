import 'package:audio_library/features/profile/wighet/catagore.dart';
import 'package:audio_library/features/profile/wighet/library_settings.dart';
import 'package:flutter/material.dart';

class AudioLibraryProfileScreen extends StatefulWidget {
  const AudioLibraryProfileScreen({super.key});

  @override
  State<AudioLibraryProfileScreen> createState() =>
      _AudioLibraryProfileScreenState();
}

class _AudioLibraryProfileScreenState extends State<AudioLibraryProfileScreen> {
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
      backgroundColor: cardBg,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: cardBg,
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          'Profile',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: primaryDark,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: primaryDark,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14.0),
              child: Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundColor: primaryDark,
                      radius: 46,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50.0,
                      ),
                    ),
                    Positioned(
                      bottom: 2,
                      right: 2,
                      child: Material(
                        color: primaryBlue,
                        shape: const CircleBorder(),
                        child: InkWell(
                          customBorder: const CircleBorder(),
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Rebaz Rasull',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textDark,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  'Rebaz@gmail.com',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: textMuted,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            const Row(
              children: [
                Catagore(value: '24', label: 'Audiobooks'),
                Catagore(value: '124h', label: 'Listen Time'),
                Catagore(value: '18', label: 'Saved'),
              ],
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 12.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: primaryDark,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: const Color.fromARGB(255, 63, 43, 66),
                      ),
                      child: const Icon(
                        Icons.headphones,
                        color: accentPink,
                      ),
                    ),
                    const SizedBox(width: 10.0),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Resume Listening',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: accentGreen,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'The Art of Listening',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: cardBg,
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8.0),
                    Material(
                      color: accentGreen,
                      shape: const CircleBorder(),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.play_arrow,
                            color: primaryDark,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 12.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Library Settings',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: textDark,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const LibrarySettings(),
          ],
        ),
      ),
    );
  }
}