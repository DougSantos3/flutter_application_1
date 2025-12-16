import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/models/pokemon.dart';
import 'package:flutter_application_1/features/pokedex/screens/home/pages/widgets/type_widget.dart';

class PokemonItemWidget extends StatelessWidget {
  const PokemonItemWidget({super.key, required this.pokemon});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: pokemon.baseColor!.withOpacity(0.8),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(pokemon.name), Text(pokemon.num)],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: pokemon.type
                        .map((e) => TypeWidget(name: e))
                        .toList(),
                  ),
                  Flexible(child: Image.network(pokemon.image)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
