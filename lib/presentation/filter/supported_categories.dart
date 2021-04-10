import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whereisthefood/data_layer/entities/category.dart';

class SupportedCategories {
  SupportedCategories._();

  static Tuple3<Category, IconData, Color> fromCategory(
      List<Category> categories) {
    // Shuffle values so pin of overlaping categories is bit more random
    values.shuffle();

    return values.firstWhere(
      (supportedCategory) {
        // map all categories to thei aliases
        final category = categories
            .map((category) => category.alias)
            //find wirst where suported category aliases countains atleast one alias
            .firstWhere(
              (alias) =>
                  supportedCategory.value1.alias.split(",").contains(alias),
              //if supported category doesnot contain alias return null
              orElse: () => null,
            );
        // if category was found return true else false
        return category != null;
      },
      orElse: () => SupportedCategories.none,
    );
  }

  static List<Tuple3<Category, IconData, Color>> values = [
    burgers,
    coffee,
    desserts,
    iceCream,
    vegan,
    wineBars,
    bars,
    pizza,
    beer,
    restaurant
  ];

  static const burgers = Tuple3(const Category("Burgers", "burgers"),
      FontAwesomeIcons.hamburger, Colors.red);

  static const coffee = Tuple3(
      const Category(
          "Coffee", "coffee,coffeeroasteries,internetcafe,cafe,cafes"),
      FontAwesomeIcons.coffee,
      Colors.brown);

  static const desserts = Tuple3(
      const Category("Desserts", "desserts,cupcakes,donuts"),
      FontAwesomeIcons.birthdayCake,
      Colors.pink);

  static const iceCream = Tuple3(const Category("Ice cream", "icecream,gelato"),
      FontAwesomeIcons.iceCream, Colors.yellow);

  static const bars = Tuple3(const Category("Bars", "bars,cocktailbars"),
      FontAwesomeIcons.cocktail, Colors.pinkAccent);

  static const wineBars = Tuple3(
      const Category("Wineries",
          "wineries,winetastingroom,beer_and_wine,winetours,wine_bars"),
      FontAwesomeIcons.wineGlassAlt,
      Colors.redAccent);

  static const pizza = Tuple3(const Category("Pizza", "pizza"),
      FontAwesomeIcons.pizzaSlice, Colors.blue);

  static const restaurant = Tuple3(
      const Category("restaurant",
          "czech,mexican,japaneese,diners,hotdogs,filipino,international,restaurants,inidan,mediterranean,seafood,thai,butcher,bistros"),
      Icons.restaurant,
      Colors.blue);

  static const beer = Tuple3(
      const Category("Beer", "beergarden,pubs,brewpubs,beer_and_wine"),
      FontAwesomeIcons.beer,
      Colors.orange);

  static const vegan = Tuple3(
      const Category("Vegan", "vegan,vegetarian"), FontAwesomeIcons.leaf, Colors.green);

  static const none =
      Tuple3(const Category("none", "none"), null, Colors.blueAccent);
}
