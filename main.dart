import 'Deck.dart';

void main() {
  var deck = new Deck();

  deck.removeCard(rank:'ace', suit:'diamonds');
  print(deck.cards.length);
}
