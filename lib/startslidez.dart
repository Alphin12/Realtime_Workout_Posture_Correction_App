import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:workout_posture_correction_app/home_page.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Welcome to Adele',
              body: 'Become the strongest version of yourself',
              image: buildImage('assets/barbell_illustr.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
               title: 'Workout injuries',
              body: 'Bad posture during workout can have life-long ill-effects',
              image: buildImage('assets/injury.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Maximize output',
              body: 'Gain maximum doing it the right way',
              image: buildImage('assets/dumbbell1.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
             title: 'If you do it, Do it Right',
              body: 'We\'ll help you correct your posture thus prevent injuries',
              image: buildImage('assets/barbell_coach.jpg'),
              footer:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: ElevatedButton(
                  onPressed: () => goToHome(context),
                  child:const Text('GET STARTED',style: TextStyle(color: Colors.white,fontSize: 18),),
                ),
              ),
             
              decoration: getPageDecoration(),
            ),
          ],
          done:const Text('Continue', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 18)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip:const Text('Skip',style: TextStyle(color: Colors.black,fontSize: 18),),
          onSkip: () => goToHome(context),
          next:const Icon(Icons.arrow_forward,color: Colors.black,),
          dotsDecorator: getDotDecoration(),
          // ignore: avoid_print
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).indicatorColor,
          dotsFlex: 0,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const VideoInput()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color:const Color.fromARGB(255, 4, 111, 113),
        //activeColor: Colors.orange,
        size:const Size(10, 10),
        activeSize:const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle:const TextStyle(fontSize: 28, fontWeight: FontWeight.bold,color: Colors.black),
        bodyTextStyle:const TextStyle(fontSize: 20,color:Colors.black),
        bodyPadding:const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding:const EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
