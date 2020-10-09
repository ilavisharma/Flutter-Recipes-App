import 'package:flutter/material.dart';
import 'package:recipes/screens/category_meals_screen.dart';
import 'package:recipes/screens/filters_screen.dart';
import 'package:recipes/screens/meal_detail_screen.dart';
import 'package:recipes/screens/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        // use the static property
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FiltersScreen.routeName: (ctx) => FiltersScreen(),
      },
      /*
       if we go to a named route that is not registered in the routes above
       onGenerateRoute: (settings) {
         print(settings.arguments);
       },
       */
      // when flutter failed to build a screen with all other measures

      /*
      onUnknownRoute: (settings) {
        // like a 404 falback page
      },
      */
    );
  }
}
