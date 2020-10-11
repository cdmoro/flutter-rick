import 'package:flutter/material.dart';
import 'package:flutterweb/models/Character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  CharacterCard(this.character);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(character.image),
        Text(character.name)
      ],
    );
  }
}