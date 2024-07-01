import 'package:flutter/material.dart';
import 'package:kids_learning/kindergardentesting/views/home_page.dart';
// import 'package:kids_learning/memory/memorygamescreen.dart';

import 'memorygamescreen.dart';

// import 'memory_game_screen.dart';

// void main() {
//   runApp(MyApp());
// }

class memory extends StatelessWidget {
// MyApp({super.key}
// );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Memory',
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          // style: ElevatedButton.styleFrom(
          //     textStyle: const TextStyle(fontSize: 28),
          //     backgroundColor: Color.fromARGB(255, 243, 170, 110),
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 243, 170, 110),
              side: BorderSide(
                  color: Color.fromARGB(255, 243, 170, 110), width: 5),
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontStyle: FontStyle.normal),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
        ),
      ),
      home: const MyHomePage(title: 'Memory'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            'Kindergarden',
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
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage1())))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Select the number of cards',
              style: TextStyle(fontSize: 28),
            ),
            const SizedBox(
              height: 40,
            ),
            (GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: const EdgeInsets.all(50),
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
              children: List.generate(4, (index) {
                return chooseCardCountButton(context, index * 2 + 4);
              }),
            )),
          ],
        ),
      ),
    );
  }

  Widget chooseCardCountButton(BuildContext context, int cardCount) {
    return SizedBox(
        width: 100,
        height: 100,
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      MemoryGameScreen(cardCount: cardCount)));
            },
            child: Text(
              cardCount.toString(),
            )));
  }
}
