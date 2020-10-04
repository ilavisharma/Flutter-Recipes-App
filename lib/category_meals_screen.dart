import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // add route for this acren as a static property
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    // extract the arguments
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          'The Recipe for the Category',
        ),
      ),
    );
  }
}
