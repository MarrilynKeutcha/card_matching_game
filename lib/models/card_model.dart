class CardModel {
  String frontImagePath;
  String backImagePath;
  bool isFaceUp;

  CardModel({required this.frontImagePath, required this.backImagePath, this.isFaceUp = false});
}
