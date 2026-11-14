import 'package:audio_library/features/home/audiobook/audio_book_details_screen.dart';
import 'package:audio_library/features/home/pages/allscreen/widget/history%20.dart';
import 'package:audio_library/features/home/pages/allscreen/widget/mystery.dart';
import 'package:flutter/material.dart';

class AllScreen extends StatefulWidget {
  const AllScreen({super.key});

  @override
  State<AllScreen> createState() => _AllScreenState();
}

class _AllScreenState extends State<AllScreen> {



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // History Section Header
          History(),
         // Mystery Section Header
          Mystery(), 
        ],
      )

    );
  }
}