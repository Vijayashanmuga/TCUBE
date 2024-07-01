import 'dart:async';

// import 'package:addisca_memory/card.dart';
import 'package:flutter/material.dart';
// import 'package:kids_learning/memory/card.dart';
// import 'package:memory';
import 'memory_game.dart';
import 'package:file/memory.dart';
// import 'package:m';
// import ;
// import 'package:kids_learning/g;
// import 'package:kids_learning/grade1/memory/card.dart';

class MemoryGameScreen extends StatefulWidget {
  final int cardCount;
  const MemoryGameScreen({required this.cardCount});

  @override
  State<MemoryGameScreen> createState() => _MemoryGameScreenState();
}

class _MemoryGameScreenState extends State<MemoryGameScreen> {
  late MemoryGame game;
  late Timer timer;

  @override
  void initState() {
    game = MemoryGame(widget.cardCount ~/ 2);
    timer = Timer(const Duration(seconds: 1), () {});
    timer.cancel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 170, 110),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        // backgroundColor: Colors.orange[100],
        title: const Text('Memory'),
      ),
      body: SingleChildScrollView(child: gameScreenBody(context)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 243, 170, 110),
        onPressed: () {
          setState(() {
            if (timer.isActive) {
              timer.cancel();
            }
            game.resetGame();
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget gameScreenBody(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 40,
        ),
        GridView.count(
          crossAxisCount: 3,
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          children: [for (var card in game.cards) cardButton(context, card)],
        ),
        Text('Pairs: ${game.foundPairs.toString()}',
            style: const TextStyle(fontSize: 20)),
        Text(
          'Trials: ${game.tries.toString()}',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Widget cardButton(context, card) {
    var icon = Image.asset('assets/images/card_backside.jpg');
    if (card.flipped) {
      icon = Image.asset('assets/images/card${card.pairId.toString()}.jpg');
    }
    return IconButton(
      onPressed: () {
        if (timer.isActive) {
          timer.cancel();
          game.flipCards();
        }
        var flip = false;
        flip = game.selectCard(card);
        setState(() {});
        if (flip) {
          timer = Timer(const Duration(seconds: 1), () {
            game.flipCards();
            setState(() {});
          });
        }
      },
      icon: icon,
    );
    // ElevatedButton(onPressed: () {}, child: Text('hi'));
  }
}
