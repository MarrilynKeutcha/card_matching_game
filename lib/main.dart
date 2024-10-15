import 'package:flutter/material.dart';

void main() {
  runApp(CardMatchingGame());
}

class CardMatchingGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Matching Game'),
      ),
      body: CardGrid(),
    );
  }
}

class CardGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,  // 4x4 grid example
      ),
      itemCount: 16,  // Total number of cards
      itemBuilder: (context, index) {
        return CardWidget();  // Card widget to display each card
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        color: Colors.blueGrey,  // Back design of the card
        child: Center(child: Text("Card")),
      ),
    );
  }
}
