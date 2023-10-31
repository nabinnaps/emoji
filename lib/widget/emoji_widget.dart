import 'package:flutter/material.dart';

class EmojiWidget extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  const EmojiWidget({super.key, required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      // child: IconButton(icon:const Icon(Icons.ac_unit),enableFeedback:true,onPressed: onTap),
      child: Container(
        child: TextButton(
          
          style: ButtonStyle(
             minimumSize: MaterialStateProperty.all(Size(120.0, 50.0)),
          enableFeedback: true, // Enable feedback

          ),
      
          child:Text(
            image,style: TextStyle(color: Colors.black),), onPressed: onTap),
      ),
    );
  }
}