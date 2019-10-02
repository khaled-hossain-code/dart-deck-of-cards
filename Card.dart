class Card {
  String rank;
  String suit;

  Card(this.rank, this.suit);
  
  @override
  String toString() {
    return '$rank of $suit';
  }
}