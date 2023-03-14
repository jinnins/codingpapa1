import 'package:flutter/material.dart';
import 'package:flutter_application_230307/recipe_model.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key, required this.recipe});

  final Recipe recipe;

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.asset(widget.recipe.imageUrl!),
            ),
            Text(widget.recipe.label!),
            const SizedBox(
              height: 10,
            ),
            Text(widget.recipe.Ingredients![0].name!),
          ],
        ),
      ),
    );
  }
}
