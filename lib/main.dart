import 'package:flutter/material.dart';
import 'package:flutter_application_230307/recipe_detal.dart';
import 'recipe_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('')),
          body: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RecipeDetail(
                            recipe: Recipe.samples[index],
                          );
                        },
                      ),
                    );
                  },
                  child: buildRecipeCard(
                    Recipe.samples[index],
                  ),
                );
              })),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(recipe.imageUrl!),
            const SizedBox(
              height: 10,
            ),
            Text(recipe.label!),
          ],
        ),
      ),
    );
  }
}
