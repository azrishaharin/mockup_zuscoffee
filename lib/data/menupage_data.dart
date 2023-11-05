import 'package:flutter/material.dart';

List<Map<String, dynamic>> coffeeList = [
  {
    "title": "New Arrived",
    "key": GlobalKey(),
    "typeList": [
      {
        "name": "Espresso",
        "type": "Black Coffee",
        "price": 2.99,
        "image": "espresso.jpg"
      },
      {
        "name": "Cappuccino",
        "type": "Espresso-based",
        "price": 3.49,
        "image": "cappuccino.jpg"
      },
      {
        "name": "Latte",
        "type": "Espresso-based",
        "price": 3.99,
        "image": "latte.jpg"
      },
      {
        "name": "Mocha",
        "type": "Espresso-based",
        "price": 4.49,
        "image": "mocha.jpg"
      },
      {
        "name": "Americano",
        "type": "Black Coffee",
        "price": 3.29,
        "image": "americano.jpg"
      },
      {
        "name": "Macchiato",
        "type": "Espresso-based",
        "price": 3.79,
        "image": "macchiato.jpg"
      },
      {
        "name": "Iced Coffee",
        "type": "Cold Brew",
        "price": 3.99,
        "image": "iced_coffee.jpg"
      }
    ]
  },
  {
    "title": "Local Favorites",
    "key": GlobalKey(),
    "typeList": [
      {
        "name": "Café au Lait",
        "type": "Milk Coffee",
        "price": 3.49,
        "image": "cafe_au_lait.jpg"
      },
      {
        "name": "Irish Coffee",
        "type": "Specialty",
        "price": 5.99,
        "image": "irish_coffee.jpg"
      },
      {
        "name": "Turkish Coffee",
        "type": "Traditional",
        "price": 4.99,
        "image": "turkish_coffee.jpg"
      },
      {
        "name": "French Press",
        "type": "Black Coffee",
        "price": 4.29,
        "image": "french_press.jpg"
      },
      {
        "name": "Cortado",
        "type": "Espresso-based",
        "price": 3.79,
        "image": "cortado.jpg"
      },
      {
        "name": "Café Miel",
        "type": "Flavored",
        "price": 4.49,
        "image": "cafe_miel.jpg"
      },
      {
        "name": "Vienna Coffee",
        "type": "Specialty",
        "price": 5.49,
        "image": "vienna_coffee.jpg"
      }
    ]
  },
  {
    "title": "Specials Like CEOs",
    "key": GlobalKey(),
    "typeList": [
      {
        "name": "Ristretto",
        "type": "Espresso-based",
        "price": 3.49,
        "image": "ristretto.jpg"
      },
      {
        "name": "Affogato",
        "type": "Dessert",
        "price": 4.99,
        "image": "affogato.jpg"
      },
      {
        "name": "Flat White",
        "type": "Milk Coffee",
        "price": 4.29,
        "image": "flat_white.jpg"
      },
      {
        "name": "Machiatto Caramel",
        "type": "Flavored",
        "price": 4.79,
        "image": "caramel_macchiato.jpg"
      },
      {
        "name": "Cold Brew",
        "type": "Cold Brew",
        "price": 3.79,
        "image": "cold_brew.jpg"
      },
      {
        "name": "Decaf Coffee",
        "type": "Black Coffee",
        "price": 3.49,
        "image": "decaf_coffee.jpg"
      },
      {
        "name": "Café con Leche",
        "type": "Milk Coffee",
        "price": 4.29,
        "image": "cafe_con_leche.jpg"
      },
      {
        "name": "Turmeric Latte",
        "type": "Specialty",
        "price": 4.99,
        "image": "turmeric_latte.jpg"
      },
      {
        "name": "Red Eye",
        "type": "Black Coffee",
        "price": 3.29,
        "image": "red_eye.jpg"
      },
      {
        "name": "Eggnog Latte",
        "type": "Seasonal",
        "price": 4.49,
        "image": "eggnog_latte.jpg"
      },
      {
        "name": "White Chocolate Mocha",
        "type": "Flavored",
        "price": 4.79,
        "image": "white_chocolate_mocha.jpg"
      },
      {
        "name": "Espresso Con Panna",
        "type": "Espresso-based",
        "price": 3.49,
        "image": "espresso_con_panna.jpg"
      },
      {
        "name": "Honey Cappuccino",
        "type": "Flavored",
        "price": 4.79,
        "image": "honey_cappuccino.jpg"
      }
    ]
  }
];

List<Map<String, dynamic>> typeList = [
  {"title": "Cheese Creme", "icon": Icons.coffee},
  {"title": "Top Picks", "icon": Icons.coffee_maker},
  {"title": "ZUS x Santan", "icon": Icons.coffee_outlined},
];
