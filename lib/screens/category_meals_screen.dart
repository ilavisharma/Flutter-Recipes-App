import 'package:flutter/material.dart';
import 'package:recipes/dummy_data.dart';
import 'package:recipes/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  // add route for this acren as a static property
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    // extract the arguments
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              affordability: categoryMeals[index].affordability,
              imageUrl: categoryMeals[index].imageUrl,
              complexity: categoryMeals[index].complexity,
              duration: categoryMeals[index].duration,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
