import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/models/pokemon.dart';
import 'package:flutter_application_1/features/pokedex/screens/details/pages/widgets/detail_app_bar_widget.dart';
import 'package:flutter_application_1/features/pokedex/screens/details/pages/widgets/detail_list_widget.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.pokemon,
    required this.list,
    required this.onBack,
    required this.controller,
    required this.onChangePokemon,
  });

  final Pokemon pokemon;
  final List<Pokemon> list;
  final VoidCallback onBack;
  final PageController controller;
  final ValueChanged<Pokemon> onChangePokemon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          DetailAppBarWidget(pokemon: pokemon, onBack: onBack),
          DetailListWidget(
            pokemon: pokemon,
            list: list,
            controller: controller,
            onChangePokemon: onChangePokemon,
          ), // Other widgets can be added here
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Container(color: pokemon.baseColor),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
