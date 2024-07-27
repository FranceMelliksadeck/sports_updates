import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    super.key,
    required this.recipe,
  });

  @override
  _RecipeDetailState createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: Add _sliderVal here if needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label), // assuming the Recipe class has a `label` property
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl), // assuming `imageUrl` is a valid asset path
                fit: BoxFit.cover, // ensuring the image covers the area
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18),
            ),
            Expanded (
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount:widget.recipe.ingredients.length,
                 itemBuilder:(BuildContext context,int index){
                  final Ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '${Ingredient.name} ${Ingredient.nationality} ${Ingredient.team} ${Ingredient.age} ${Ingredient.jerseyNo}'
                  );
                 },
                 ),
                 ),
            // TODO: Add Expanded and other UI components as needed
          ],
        ),
      ),
    );
  }
}
