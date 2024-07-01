import 'dart:collection';

// import '../../views/Animal_Screen.dart';
import 'package:kids_learning/kindergardentesting/mathsquiz/quizbanner.dart';
// import 'package:kids_learning/kindergardentesting/readingquize/quizbanner.dart';

import '../../kindergardertraining/views/Animal_Screen.dart';
import '../../kindergardertraining/views/colors_screen.dart';
import '../Model/m_learn.dart';
import '../memory/main.dart';
import '../quize/quizbanner.dart';
import '../views/Animal_Screen.dart';
import '../views/alphabet_Screen2.dart';
import '../views/colors_screen.dart';
import '../views/number_screen.dart';
import '../views/sensory.dart';

class ControllerLearn {
  static List<ModelLearn> _dataLearn = [
    // ModelLearn(
    //   image: 'assets/images/arabica.png',
    //   title: 'تعلم الحروف',
    //   page: AlphabetScreen(),
    // ),
    ModelLearn(
      title: 'Reading',
      image: 'assets/images/reading.png',
      page: quizbannerPage(),
    ),
    // ModelLearn(
    //   title: 'Mathematics',
    //   image: 'assets/images/alphabet.png',
    //   page: AlphabetScreen1(),
    // ),
    ModelLearn(
      title: 'Mathematics',
      image: 'assets/images/no.png',
      page: mathsquizbannerPage(),
    ),

    ModelLearn(
      title: 'memory',
      image: 'assets/images/memory.png',
      page: memory(),
    ),

    ModelLearn(
      title: 'sensory abilities',
      image: 'assets/images/sensory.png',
      page: sensoryScreen(),
    ),
    ModelLearn(
      title: 'Attention/Hyperactivity',
      image: 'assets/images/attention.png',
      page: sensoryScreen(),
    ),
    ModelLearn(
      title: 'executive functioning',
      image: 'assets/images/executive.png',
      page: sensoryScreen(),
    ),
    ModelLearn(
      title: 'Writing',
      image: 'assets/images/writing.png',
      page: AnimalScreen(),
    ),
    ModelLearn(
      title: 'oral language',
      image: 'assets/images/oral.png',
      page: AnimalScreen(),
    ),
    ModelLearn(
      title: 'social skills',
      image: 'assets/images/social.png',
      page: AnimalScreen(),
    ),
  ];

  static UnmodifiableListView<ModelLearn> get dataLearn =>
      UnmodifiableListView(_dataLearn);

  static int get dataLength => _dataLearn.length;
}
