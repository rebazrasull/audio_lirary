import 'package:audio_library/router/route_names.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  void _endWelcomePage(BuildContext context) {
    context.go(RouteNames.login);
  }

  List<PageViewModel> getPage() {
    return [
      PageViewModel(
        title: "Ghost Story Collection 002",
        body: "A collection of ten pieces, read by various readers, about the unreal edges of this world in legend and story; tales of love, death and beyond. If just one story prickles the hair on the back of your neck, or prickles your eyelids with the touch of tears, we will have succeeded.",
        image: Padding(
          padding: const EdgeInsets.only(
            top: 44
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              "https://www.digitalbook.io/ia/archive.org/download/ghost_stories_002_librivox/Ghost_Story_Collection_2_1002.jpg",
              height: 375.0,
            ),
          ),
        ),
        footer: const Text(''),
        decoration: const PageDecoration(
          pageColor: Colors.deepPurple,
        ),
      ),
      PageViewModel(
        title: "The Design of Everyday Things",
        body: "Design doesn't have to complicated, which is why this guide to human-centered design shows that usability is just as important as aesthetics. Even the smartest among us can feel inept as we fail to figure out which light switch or oven burner to turn on, or whether to push, pull, or slide a door.",
        footer: const Text(''),
         image: Padding(
          padding: const EdgeInsets.only(
            top: 44.0
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              "https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/b2/9e/bf/b29ebfb2-9268-fa9a-5a3b-037e86b46410/9781549116667.jpg/536x0w.webp",
              height: 375.0,
            ),
          ),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.amberAccent,
        ),
      ),
      PageViewModel(
        title: "God's Troubadour, The Story of St. Francis of Assisi",
        body: "Francis, a young Italian boy, is a merchant's son who is enthralled by the troubadour songs and tales of knights that his father brings back from his travels. He decides to become a knight, but after seeing the poor and suffering in the tragedies of war, he decides to give away all of his worldly possessions and become a troubadour for God.",
        footer: const Text(''),
         image: Padding(
          padding: const EdgeInsets.only(
            top: 44.0
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              "https://www.digitalbook.io/ia/archive.org/download/LibrivoxCdCoverArt4/Gods_Troubadour_1004.jpg",
              height: 375.0,
            ),
          ),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.brown,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      body: IntroductionScreen( 
        showDoneButton: true,
        showSkipButton: true,
        showNextButton: true,
        next: const Text('Next'),
        skip: const Text('Skip'),
        done: const Text('Done'),
        onDone: () => _endWelcomePage(context),
        onSkip: () => _endWelcomePage(context),
        pages: getPage(),
      ),
    );
  }
}