import 'package:flutter/material.dart';
import 'package:emoji_animation/viewmodel/emoji_viewmodel.dart';
import 'package:emoji_animation/widget/emoji_widget.dart';
import 'package:provider/provider.dart';

class EmojiView extends StatefulWidget {
  const EmojiView({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _EmojiViewState createState() => _EmojiViewState();
}

class _EmojiViewState extends State<EmojiView> with SingleTickerProviderStateMixin {
  @override
 void initState() {
    super.initState();
    final emojiList = Provider.of<EmojiViewModel>(context, listen: false);
    emojiList.initState(this);
    
    // Initialize any state, controllers, or other setup here
  }
  @override
  Widget build(BuildContext context) {
    final emojiList = Provider.of<EmojiViewModel>(context);
    Size size = MediaQuery.of(context).size;
    double getRadianFromDegree(double degree) {
      double unitRadian = 57.295779513;
      return degree / unitRadian;
    }

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            Center(
              child: Stack(
                children:<Widget> [
                  IgnorePointer(
                    child: Container(
                    color: Colors.transparent,
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
                  GestureDetector(
                  onTap: (){
                    print("Nabin Shrestha pass");
                  },
                    child: Transform.translate(
                      offset: Offset.fromDirection(getRadianFromDegree(330), emojiList.degOneTranslationAnimation.value * 100),
                      child: Transform(
                        transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                        alignment: Alignment.center,
                        child: EmojiWidget(
                          image: emojiList.emojis[8], onTap: () {})),
                    ),
                  ),
                   Transform.translate(
                    offset: Offset.fromDirection(getRadianFromDegree(300), emojiList.degOneTranslationAnimation.value * 100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                      alignment: Alignment.center,
                      child: EmojiWidget(
                        image: emojiList.emojis[7], onTap: () {})),
                  ),
                   Transform.translate(
                    offset: Offset.fromDirection(getRadianFromDegree(270), emojiList.degOneTranslationAnimation.value * 100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                      alignment: Alignment.center,
                      child: EmojiWidget(
                        image: emojiList.emojis[6], onTap: () {})),
                  ),
                   Transform.translate(
                    offset: Offset.fromDirection(getRadianFromDegree(240), emojiList.degOneTranslationAnimation.value * 100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                      alignment: Alignment.center,
                      child: EmojiWidget(image: emojiList.emojis[5], onTap: () {})),
                  ),
                   Transform.translate(
                    offset: Offset.fromDirection(getRadianFromDegree(210), emojiList.degOneTranslationAnimation.value * 100),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                      alignment: Alignment.center,
                      child: EmojiWidget(image: emojiList.emojis[4], onTap: () {})),
                  ),
                
                  Transform.translate(
                    offset: Offset.fromDirection(getRadianFromDegree(330), emojiList.degOneTranslationAnimation.value * 50),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                      alignment: Alignment.center,
                      child: EmojiWidget(image: emojiList.emojis[3], onTap: () {
                        print("3");
            
                      })),
                  ),
                  IgnorePointer(
                    child: Container(
                    color: Colors.transparent,
                    height: 150.0,
                    width: 150.0,
                  ),
                ),
                   Transform.translate(
                    offset: Offset.fromDirection(getRadianFromDegree(270), emojiList.degOneTranslationAnimation.value * 50),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                      alignment: Alignment.center,
                      child: EmojiWidget(image: emojiList.emojis[2], onTap: () {
                        print("2");
            
                      })),
                  ),
                   Transform.translate(
                    offset: Offset.fromDirection(getRadianFromDegree(210), emojiList.degOneTranslationAnimation.value * 50),
                    child: Transform(
                      transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value))..scale(emojiList.degOneTranslationAnimation.value) ,
                      alignment: Alignment.center,
                      child: EmojiWidget(
                        image: emojiList.emojis[0],
                       onTap: () {
                           if (emojiList.animationController.isCompleted) {
                                  print("test");
                              } else {
                        emojiList.animationController.forward();
                      }
                      })),
                  ),
                  // Transform(
                  //     transform: Matrix4.rotationZ(getRadianFromDegree(emojiList.rotationAnimation.value)) ,
                  //     alignment: Alignment.center,
            
                  //   child: EmojiWidget(image: emojiList.emojis[1], onTap: () {
                  //     if (emojiList.animationController.isCompleted) {
                  //       emojiList.animationController.reverse();
                  //     } else {
                  //       emojiList.animationController.forward();
                  //     }
                  //   }),
                  // ),
                  EmojiWidget(image: emojiList.emojis[1], onTap: () {
                      if (emojiList.animationController.isCompleted) {
                        emojiList.animationController.reverse();
                      } else {
                        emojiList.animationController.forward();
                      }
                    }),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
