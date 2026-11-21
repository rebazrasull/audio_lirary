import 'package:flutter/material.dart';

class _LibrarySettingItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconBg;

  const _LibrarySettingItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.iconBg,
  });
}

class LibrarySettings extends StatefulWidget {
  const LibrarySettings({super.key});

  @override
  State<LibrarySettings> createState() => _LibrarySettingsState();
}

class _LibrarySettingsState extends State<LibrarySettings> {
  final List<_LibrarySettingItem> _items = const [
    _LibrarySettingItem(
      title: 'Playback Speed',
      subtitle: '1.0x Normal',
      icon: Icons.speed,
      iconBg: Color(0xFF1565C0),
    ),
    _LibrarySettingItem(
      title: 'Audio Quality',
      subtitle: 'High (AAC 256kbps)',
      icon: Icons.graphic_eq,
      iconBg: Color(0xFF00CF95),
    ),
    _LibrarySettingItem(
      title: 'Downloads',
      subtitle: 'Wi-Fi only',
      icon: Icons.download_for_offline_outlined,
      iconBg: Color(0xFF20374A),
    ),
    _LibrarySettingItem(
      title: 'Sleep Timer',
      subtitle: 'Off',
      icon: Icons.bedtime_outlined,
      iconBg: Color(0xFFFE69AE),
    ),
    _LibrarySettingItem(
      title: 'Offline Storage',
      subtitle: '1.4 GB used',
      icon: Icons.sd_storage_outlined,
      iconBg: Color(0xFF4B5A82),
    ),
    _LibrarySettingItem(
      title: 'Notifications',
      subtitle: 'New releases & reminders',
      icon: Icons.notifications_none,
      iconBg: Color(0xFF01567B),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _items.length,
      itemBuilder: (BuildContext context, int index) {
        final item = _items[index];
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 6.0,
          ),
          child: Card(
            elevation: 0,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(12.0),
              onTap: () {
                
              },
              child: ListTile(
               
                leading: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: item.iconBg.withValues(alpha: 0.14),
                  ),
                  child: Icon(
                    item.icon,
                    color: item.iconBg,
                  ),
                ),
                title: Text(
                  item.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F2937),
                  ),
                ),
                subtitle: Text(
                  item.subtitle,
                  style: const TextStyle(
                    fontSize: 12.5,
                    color: Color(0xFF6B7280),
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right,
                  color: Color(0xFF6B7280),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

