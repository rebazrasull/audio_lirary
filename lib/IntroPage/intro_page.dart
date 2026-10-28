import 'package:audio_library/login/login_screen.dart';
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

  // ignore: strict_top_level_inference, non_constant_identifier_names
void _endWelcomePage(BuildContext context) {
    context.go(RouteNames.login);
}

  List<PageViewModel> getPage(){
  return [
    PageViewModel(
      title: "Title of blue page",
      body: "Welcome to the app! This is a description on a page with a blue background.",
      footer: Text(''),
      image: Center(
        child: Image.network("https://example.com/image.png", height: 175.0),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.blue,
      ),
    ),
    PageViewModel(
      title: "Title of blue page",
      body: "Welcome to the app! This is a description on a page with a blue background.",
      footer: Text(''),
      image: Center(
        child: Image.network("https://example.com/image.png", height: 175.0),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.blue,
      ),
    ),
    PageViewModel(
      title: "Title of blue page",
      body: "Welcome to the app! This is a description on a page with a blue background.",
      footer: Text(''),
      image: Center(
        child: Image.network("https://example.com/image.png", height: 175.0),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.blue,
      ),
    ),
  ]; 
}
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  IntroductionScreen(
    showDoneButton: true,
    showSkipButton: true,
    showNextButton: true,
    next: Text('Next'),
    skip: Text('Skip'),
    done:  Text("Done"),
     onDone: () => _endWelcomePage(context),
     onSkip: () => _endWelcomePage(context),
   pages: getPage()
  )

    );
  }
}