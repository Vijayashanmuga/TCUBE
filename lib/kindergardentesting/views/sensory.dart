import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/kindergardentesting/sensoryquiz/Quiz1.dart';
// import 'package:kids_learning/Component/appBar.dart';
// import 'package:kids_learning/Component/card_screens.dart';
// import 'package:kids_learning/Controller/c_screenl.dart';

import '../Component/appBar.dart';
import '../Component/card_screens.dart';
import '../Controller/c_screenl.dart';

class sensoryScreen extends StatefulWidget {
  @override
  _sensoryScreenState createState() => _sensoryScreenState();
}

class _sensoryScreenState extends State<sensoryScreen> {
  String imageView = 'assets/images/sensory.png';
  AudioCache audioCache = AudioCache();
  AudioPlayer audioPlayer = AudioPlayer();
  @override
  void dispose() {
    audioPlayer.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 243, 170, 110),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(150))),
          title: Text(
            'SensoryAbilities',
            style: TextStyle(
              fontStyle: FontStyle.italic, fontSize: 30,
              //  shadows: [
              // Shadow(
              // offset: Offset(1.5, 1.5),
              color: Colors.white,

              //   blurRadius: 3,
              // )
              // ]
            ),
          ),
          centerTitle: true,
          // actions: [
          //   //app icon
          //   Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Icon(Icons.arrow_back_ios)
          //   )
          // ],
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ShowImage(image: imageView),
                  SizedBox(height: 2),
                  Expanded(
                      child: Column(
                    children: [
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                          newImage: PathImagesensory.ear, newAudio: '',
                          // newAudio: PathAudiosensory.ear
                        ),
                        onpressedBtn2: () => onClick(
                          newImage: PathImagesensory.nose, newAudio: '',
                          // newAudio: PathAudiosensory.nose
                        ),
                        onpressedBtn3: () => onClick(
                            newImage: PathImagesensory.eyes, newAudio: ''
                            // newAudio: PathAudiosensory.eyes
                            ),
                        title1: 'Ear',
                        title2: 'Nose',
                        title3: 'Eyes',
                        btnColor2: Colors.pink,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImagesensory.lips, newAudio: ''
                            // newAudio: PathAudiosensory.lips
                            ),
                        onpressedBtn2: () => onClick(
                            newImage: PathImagesensory.chin, newAudio: ''
                            // newAudio: PathAudiosensory.chin
                            ),
                        onpressedBtn3: () => onClick(
                            newImage: PathImagesensory.hand, newAudio: ''
                            // newAudio: PathAudiosensory.hand
                            ),
                        title1: 'Lips',
                        title2: 'Chin',
                        title3: 'Hand',
                        btnColor2: Colors.pink,
                      ),
                      SizedBox(height: 2),
                      ScreenRow(
                        onpressedBtn1: () => onClick(
                            newImage: PathImagesensory.tongue, newAudio: ''
                            // newAudio: PathAudiosensory.tongue
                            ),
                        onpressedBtn2: () => onClick(
                            newImage: PathImagesensory.knee, newAudio: ''
                            // newAudio: PathAudiosensory.knee
                            ),
                        onpressedBtn3: () => onClick(
                            newImage: PathImagesensory.elbow, newAudio: ''
                            // newAudio: PathAudiosensory.elbow
                            ),
                        title1: 'Tonuge',
                        title2: 'Knee',
                        title3: 'Elbow',
                        // title3: 'ببغاء',
                        btnColor2: Colors.pink,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sensoryQuze()),
                            );
                          },
                          child: Text('Parent Test'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 243, 170, 110),
                            side: BorderSide(
                              color: Color.fromARGB(255, 246, 133, 13),
                              width: 1,
                            ),
                            textStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              )),
        ));
  }

  void onClick({required String newImage, required String newAudio}) async {
    setState(() {
      imageView = newImage;
    });
    audioPlayer.stop();
    audioPlayer = await audioCache.play(newAudio);
  }
}
