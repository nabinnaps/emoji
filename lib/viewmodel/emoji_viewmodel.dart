import 'package:flutter/material.dart';

class EmojiViewModel extends ChangeNotifier{
  late AnimationController animationController;
  late Animation degOneTranslationAnimation;
  late Animation degTwoTranslationAnimation;
  late Animation degThreeTranslationAnimation;
  late Animation rotationAnimation;
   final List<String> emojis = [
    "🙂", "😀", "😃", "😄", "😁", "😅", "😆", "🤣", "😂", "🙃",
    "😉", "😊", "😇", "😎", "🤓", "🧐", "🥳"
  ];

  void initState(dynamic thes) {  
  animationController= AnimationController(vsync: thes,duration: const Duration(milliseconds: 250));
  degOneTranslationAnimation= Tween(begin:0.0,end: 1.0 ).animate(animationController);
  degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double >(begin: 0.0,end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.4,end: 1.0), weight: 45.0),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(tween: Tween<double >(begin: 0.0,end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(tween: Tween<double>(begin: 1.75,end: 1.0), weight: 65.0),
    ]).animate(animationController);
  rotationAnimation=Tween<double>(begin:180.0,end: 0.0 ).animate(CurvedAnimation(parent: animationController, 
  curve: Curves.easeOut));
  animationController.addListener(() {
    notifyListeners();
  });
    
  }

}