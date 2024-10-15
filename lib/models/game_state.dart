import 'dart:async';
import 'package:flutter/material.dart';
import 'card_model.dart';

class GameState with ChangeNotifier {
  List<CardModel> cards = [];
  int score = 0;
  int time = 0;
  int flippedCardIndex = -1;
  Timer? gameTimer;

  GameState() {
    _initializeGame();
  }

  void _initializeGame() {
    // Initialize the cards with pairs of front designs
    cards = [
      CardModel(frontImagePath: 'assets/card_front_1.png', backImagePath: 'assets/card_back.png'),
      CardModel(frontImagePath: 'assets/card_front_1.png', backImagePath: 'assets/card_back.png'),
      CardModel(frontImagePath: 'assets/card_front_2.png', backImagePath: 'assets/card_back.png'),
      CardModel(frontImagePath: 'assets/card_front_2.png', backImagePath: 'assets/card_back.png'),
      // Add more pairs as necessary
    ];
    cards.shuffle(); // Shuffle the cards
    notifyListeners();
  }

  void flipCard(int index) {
    if (!cards[index].isFaceUp) {
      cards[index].isFaceUp = true;
      notifyListeners();

      if (flippedCardIndex == -1) {
        flippedCardIndex = index;
      } else {
        _checkForMatch
