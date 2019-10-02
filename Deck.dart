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
        cards.add(new Card(rank, suit));
      }
    }
  }
  printCards() {}
  shuffle() {}
  deal() {}
  removeCard() {}
  @override
  String toString() {
    return this.cards.toString();
  }
}
