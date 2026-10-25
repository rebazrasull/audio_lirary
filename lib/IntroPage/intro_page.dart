import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  // ignore: strict_top_level_inference, non_constant_identifier_names
  void _EndWelcomePage(BuildContext context, Widget nextScreen) {
  Navigator.pop(context);
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => nextScreen),
  );
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
     onDone: () {
    _EndWelcomePage;
   },
   onSkip: () {
      _EndWelcomePage;
   },
   pages: getPage()
  )

    );
  }
}