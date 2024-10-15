class CardGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final gameState = Provider.of<GameState>(context);
    
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,  // Example for a 4x4 grid
      ),
      itemCount: gameState.cards.length,
      itemBuilder: (context, index) {
        return CardWidget(gameState.cards[index], index);  // Pass card and index
      },
    );
  }
}
