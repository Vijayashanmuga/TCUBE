import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kids_learning/kindergardentesting/views/alphabet_Screen2.dart';
import 'package:kids_learning/kindergardentesting/views/number_screen.dart';

import 'Quiz1.dart';
// import 'package:mrigrakksha/quiz/Quiz1.dart';

class mathsquizbannerPage extends StatefulWidget {
  mathsquizbannerPage({Key? key}) : super(key: key);

  @override
  _BannerPageState createState() => _BannerPageState();
}

class _BannerPageState extends State<mathsquizbannerPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 231, 231),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 547,
                  alignment: Alignment.bottomCenter,
                  child: _bannerCard(),
                ),
              ),
              Center(child: _imgBanner()),
            ],
          ),
          SizedBox(height: 30)
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _finalButton(context),
    );
  }

  Widget _bannerCard() => Container(
        height: 300,
        width: 340,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Note to parents',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Let your child read the Numbers. In the end, there are some questions .Based on your child\'s reading level, please let us know where he is falling behind',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      );

  Widget _imgBanner() {
    return Container(
      height: 400,
      child: Image(
        image: AssetImage('assets/images/no.png'),
      ),
    );
  }

  Container _finalButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 40),
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 34),
          ),
          backgroundColor: MaterialStateProperty.all(
            Color.fromARGB(255, 243, 170, 110),
          ),
          //  style: ElevatedButton.styleFrom(
          //   backgroundColor: Color.fromARGB(255, 243, 170, 110),
          //   side: BorderSide(
          //     color: Color.fromARGB(255, 246, 133, 13),
          //     width: 1,
          //   ),
          //   textStyle: const TextStyle(
          //       color: Colors.black, fontSize: 15, fontStyle: FontStyle.normal),
          // ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        child: Text(
          "Let's Start",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
        onPressed: () {
          // Navigator.pushNamed(context, '/homePage');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NumberScreen()),
          );
        },
      ),
    );
  }
}
