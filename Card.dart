class Card {
  String rank;
  String suit;

  Card({this.rank, this.suit});

  @override
  String toString() {
    return '$rank of $suit';
  }

  bool isEqual(Card card){
    return isSuitEqual(card.suit) && isRankEqual(card.rank);
  }

  bool isSuitEqual(String suitName) {
    return this.suit == suitName;
  }

  bool isRankEqual(String rank) {
    return this.rank == rank;
  }
}
