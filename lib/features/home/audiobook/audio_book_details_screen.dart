import 'package:audio_library/features/home/audiobook/widget/detail_tile.dart';
import 'package:audio_library/features/home/audiobook/widget/info_chip.dart';
import 'package:flutter/material.dart';

class AudioBookDetailsScreen extends StatelessWidget {
  const AudioBookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        automaticallyImplyLeading:false,
        backgroundColor:Colors.brown[100],
        centerTitle: true,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            
          },
          child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              ),
        ),
        title: Text(
          'AudioBook',
          maxLines: 1,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold
          ),
          ),
          actionsPadding: EdgeInsets.symmetric(
            horizontal: 12.0
          ),
          actions: [
            IconButton(
              onPressed: () {
              
            },
             icon: Icon(Icons.bookmark_border)
             ),
               IconButton(
              onPressed: () {
              
            },
             icon: Icon(Icons.more_vert)
             ),
          ],
           ),
           body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal:120.0,
                    vertical: 42.0
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      color: Colors.grey
                    ),
                    child:  ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12.0),
                      child: Image.network(
                        'https://www.digitalbook.io/ol/covers.openlibrary.org/b/id/14634038-L.jpg',
                        ),
                      ),
                  ),
                ),
              ),
              
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Twenty Years After',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w900
                  ),
                  ),
                  ),
                   Align(
                alignment: Alignment.center,
                child: Text(
                  'Alexandre Dumas',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 18.0,
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star_rounded,
                   color: Color(0xFFFFB800),
                    size: 24
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '4.8',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
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
              SizedBox(height: 24),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InfoChip(
                    iconData: Icons.attach_money_rounded,
                     label: 'Free',
                      color: Color(0xFF22C55E),
                      ),
                  SizedBox(
                    width: 8.0,
                    ),
                  InfoChip(
                    iconData: Icons.language_rounded,
                     label: 'English', 
                     color: Color(0xFF3B82F6)
                     ),
                   SizedBox(
                    width: 8.0,
                    ),
                  InfoChip(
                    iconData: Icons.category_outlined,
                     label: 'Fiction',
                      color:Color(0xFFA855F7)
                      ),
                ],
               ),
               SizedBox(
                height: 28.0,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                    
                  }, 
                   icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                     size: 26.0,
                     ),
                  label: Text(
                    'Play Now',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2563EB),
                      // padding: EdgeInsets.symmetric(
                      //   vertical: 14.0,
                      //   horizontal: 18.0
                      // ),
                      minimumSize: Size(172,52),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(14.0)
                      )
                  
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEFF6FF),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: IconButton(
                        padding: EdgeInsets.all(16),
                      onPressed: () {
                      
                    },
                     icon: Icon(
                      Icons.podcasts_rounded,
                       color: Color(0xFF2563EB)
                       )
                     ),
                  ),
                ],
               ),
              //  Row(
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     DetailTile(
              //       icon: Icons.graphic_eq_rounded,
              //        value: 'Provider',
              //         label: 'LibriVox',
              //         ),
              //      DetailTile(
              //       icon: Icons.record_voice_over_outlined,
              //        value: 'Narrator', 
              //        label: 'Christine Lehman',
              //        ),
              //   ],
              //  )
            ],
           ),
    );
  }
}