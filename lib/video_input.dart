import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class VideoInput extends StatefulWidget
{
  const VideoInput({super.key});
  @override
  State<StatefulWidget> createState() {
    return _VideoInput();
  }
}

class _VideoInput extends State<VideoInput>
{ 
  // ignore: unused_field
  File? _selectedVideo;

  void _takeVideo() async {
    final videopicker=ImagePicker();
    final pickedVideo=await videopicker.pickVideo(source: ImageSource.camera);
    if(pickedVideo==null)
    {return;}

    setState(() {
      _selectedVideo=File(pickedVideo.path);
    });  
  }

  @override
  Widget build(BuildContext context) {

    Widget content = TextButton.icon(   //Button with camera icon
      icon: const Icon(Icons.camera),
      label: const Text('Take a Video to detect Posture',style: TextStyle(fontSize: 20,color: Colors.white)),
      onPressed: _takeVideo,
    );
      
 return Scaffold(
      appBar: AppBar(
        title: const Text('Workout Posture Correction',style: TextStyle(color: Colors.black)),
        backgroundColor:const Color.fromARGB(255, 47, 227, 255),
        elevation: 15,
        shadowColor: const Color.fromARGB(255, 134, 69, 69),
       ),
      body:
          Container(
            child: Center(
              child: Container(  //allows to control the size& alignment of content inside the container
              decoration: BoxDecoration(    //to give border for the image button icon
              color: Colors.black,
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
              ),
              height: 250,
              width: double.infinity,  //to make it as wide as possible
              alignment: Alignment.center,  //centers the 'content' inside the container
              child: content,
            ),
          ),
      ),
    );
  }
}



