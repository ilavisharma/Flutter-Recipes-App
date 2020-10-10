import 'package:flutter/material.dart';
import 'package:recipes/models/meal.dart';
import 'package:recipes/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritedMeals;

  FavoritesScreen(this.favoritedMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritedMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - Start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoritedMeals[index].id,
            title: favoritedMeals[index].title,
            affordability: favoritedMeals[index].affordability,
            imageUrl: favoritedMeals[index].imageUrl,
            complexity: favoritedMeals[index].complexity,
            duration: favoritedMeals[index].duration,
          );
        },
        itemCount: favoritedMeals.length,
      );
    }
  }
}
