import 'package:flutter_application_1/common/models/pokemon.dart';

abstract class IPokemonRepository {
  Future<List<Pokemon>> getAllPokemons();
}

class PokemonRepository implements IPokemonRepository {
  @override
  Future<List<Pokemon>> getAllPokemons() {}
}
