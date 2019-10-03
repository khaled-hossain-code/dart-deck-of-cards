import 'Card.dart';

class Deck {
  List<Card> cards = [];
  List ranks = [
    'ace',
    'king',
    'queen',
    'jack',
    'ten',
    'nine',
    'eight',
    'seven',
    'six',
    'five',
    'four',
    'three',
    'two',
    'one'
  ];
  List suits = ['hearts', 'diamonds', 'spades', 'clubs'];

  Deck() {
    for (var suit in suits) {
      for (var rank in ranks) {
        cards.add(new Card(rank:rank, suit:suit));
      }
    }
  }
  
  printCards() {}
  
  shuffle() {
    this.cards.shuffle();
  }

  List<Card> cardsWithSuit(String suitName) {
    return this.cards.where((card) => card.isSuitEqual(suitName));
  }

  deal(int handSize) {
    var hand = this.cards.sublist(0, handSize);
    this.cards = this.cards.sublist(handSize);
    return hand;
  }

  removeCard({String rank, String suit}) {
    var removeCard = new Card(rank:rank, suit:suit);
    this.cards.removeWhere((card) {
      return card.isEqual(removeCard);
    });
  }
  
  @override
  String toString() {
    return this.cards.toString();
  }
}
