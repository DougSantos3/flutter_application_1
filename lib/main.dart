import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/models/repositories/pokemon_repository.dart';
import 'package:flutter_application_1/features/home/container/home_container.dart';
import 'package:flutter_application_1/features/home/pages/home_loading.dart';
import 'package:flutter_application_1/features/home/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex 2k21',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
      ),
      //home: HomePage(list: [],),
      //home: HomeLoading(),
      home: HomeContainer(repository: PokemonRepository(dio: Dio())),
    );
  }
}
