import 'package:flutter/material.dart';
import '../Widgets/meal-item.dart';
import '../Models/meal.dart';

class FavoritesScreen extends StatelessWidget {
  List<Meal> favoritesMeal;

  FavoritesScreen(this.favoritesMeal);
  @override
  Widget build(BuildContext context) {
    return (favoritesMeal.isEmpty)
        ? Center(
            child: Text('You have no favorite yet!'),
          )
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return MealItem(
                id: favoritesMeal[index].id,
                title: favoritesMeal[index].title,
                imageUrl: favoritesMeal[index].imageUrl,
                duration: favoritesMeal[index].duration,
                affordability: favoritesMeal[index].affordability,
                complexity: favoritesMeal[index].complexity,
                // removeItem: _removeMeal,
              );
            },
            itemCount: favoritesMeal.length,
          );
  }
}
