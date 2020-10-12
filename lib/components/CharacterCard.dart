import 'package:flutter/material.dart';
import 'package:flutterrick/components/CharacterStatus.dart';
import 'package:flutterrick/models/Character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;

  CharacterCard(this.character);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      child: Card(
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(child: Image.network(character.image), height: 200,), 
              Text(character.name, style: TextStyle(fontSize: 24), softWrap: false, overflow: TextOverflow.ellipsis,),
              // Text(character.status + " - " + character.species)
              Row(
                children: [
                  CharacterStatus(character.status),
                  Text(" - "),
                  Text(character.species)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
