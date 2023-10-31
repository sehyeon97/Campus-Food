import 'package:flutter/material.dart';
import 'package:meals/models/results/burger_info.dart';

import 'package:meals/models/category.dart';
import 'package:meals/models/meals/meal.dart';
import 'package:meals/models/results/nutrient_info.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Chick-fil-A',
    color: Colors.red,
  ),
  Category(
    id: 'c2',
    title: 'Habit',
    color: Colors.orange,
  ),
  Category(
    id: 'c3',
    title: 'Shake Smart',
    color: Colors.lightBlue,
  ),
];

const mealsData = [
  Meal(
    id: 'm1',
    category: 'c1',
    title: 'Chick-fil-A Chicken Sandwich',
    imageUrl:
        'https://res.cloudinary.com/contender-digital/image/upload/w_2304,h_1266,c_fill/content_images/rtwhva8c7kabjhhxc7a2',
    nutritionInfo: BurgerInfo(
      calories: '420',
      totalFat: '18',
      saturatedFat: '3.5',
      transFat: '0',
      carbs: '41',
      fiber: '1',
      sugar: '6',
      protein: '29',
      salt: '1460',
    ),
  ),
  Meal(
    id: 'm2',
    category: 'c1',
    title: 'Chick-fil-A Deluxe Sandwich',
    imageUrl:
        'https://www.cfacdn.com/img/order/COM/Menu_Refresh/Entree/Entree%20PDP/_0000s_0004_NEWStack6200001CFAPDPDeluxeSandwich1085png.png',
    nutritionInfo: BurgerInfo(
      calories: '490',
      totalFat: '22',
      saturatedFat: '3.5',
      transFat: '0',
      carbs: '43',
      fiber: '1',
      sugar: '7',
      protein: '32',
      salt: '1700',
    ),
  ),
  Meal(
    id: 'm3',
    category: 'c1',
    title: 'Spicy Chicken Sandwich',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Entrees/CFASpicySandwich_1080.png',
    nutritionInfo: BurgerInfo(
      calories: '450',
      totalFat: '19',
      saturatedFat: '4',
      transFat: '0',
      carbs: '45',
      fiber: '1',
      sugar: '6',
      protein: '28',
      salt: '1730',
    ),
  ),
  Meal(
    id: 'm4',
    category: 'c1',
    title: 'Spicy Deluxe Sandwich',
    imageUrl:
        'https://www.cfacdn.com/img/order/COM/Menu_Refresh/Entree/Entree%20Desktop/_0003s_0012_%5BFeed%5D_0001s_0023_Entrees_Spicy-Deluxe-Sandwich.png',
    nutritionInfo: BurgerInfo(
      calories: '520',
      totalFat: '25',
      saturatedFat: '7',
      transFat: '0',
      carbs: '46',
      fiber: '2',
      sugar: '7',
      protein: '31',
      salt: '1790',
    ),
  ),
  Meal(
    id: 'm5',
    category: 'c1',
    title: 'Grilled Chicken Sandwich',
    imageUrl:
        'https://www.cfacdn.com/img/order/COM/Menu_Refresh/Entree/Entree%20PDP/_0000s_0009_Final__0026_CFA_PDP_Grilled-Deluxe-Sandwich_1085.png',
    nutritionInfo: BurgerInfo(
      calories: '390',
      totalFat: '12',
      saturatedFat: '2',
      transFat: '0',
      carbs: '44',
      fiber: '3',
      sugar: '12',
      protein: '28',
      salt: '770',
    ),
  ),
  Meal(
    id: 'm6',
    category: 'c1',
    title: 'Chick-fil-A Grilled Chicken Club Sandwich',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Entrees/grilledClub_colbyJack_PDP.png',
    nutritionInfo: BurgerInfo(
      calories: '520',
      totalFat: '22',
      saturatedFat: '8',
      transFat: '0',
      carbs: '45',
      fiber: '3',
      sugar: '12',
      protein: '38',
      salt: '1130',
    ),
  ),
  Meal(
    id: 'm7',
    category: 'c1',
    title: 'Chick-fil-A Nuggets',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Entrees/nuggets_8ct_PDP.png',
    nutritionInfo: BurgerInfo(
      calories: '250',
      totalFat: '11',
      saturatedFat: '2.5',
      transFat: '0',
      carbs: '11',
      fiber: '0',
      sugar: '1',
      protein: '27',
      salt: '1210',
    ),
  ),
  Meal(
    id: 'm8',
    category: 'c1',
    title: 'Grilled Nuggets',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Entrees/grilledNuggets_8ct_PDP.png',
    nutritionInfo: BurgerInfo(
      calories: '130',
      totalFat: '3',
      saturatedFat: '0.5',
      transFat: '0',
      carbs: '1',
      fiber: '0',
      sugar: '1',
      protein: '25',
      salt: '440',
    ),
  ),
  Meal(
    id: 'm9',
    category: 'c1',
    title: 'Chick-fil-A Chick-n-Strips',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Entrees/strips_3ct_PDP.png',
    nutritionInfo: BurgerInfo(
      calories: '310',
      totalFat: '14',
      saturatedFat: '2.5',
      transFat: '0',
      carbs: '16',
      fiber: '0',
      sugar: '2',
      protein: '29',
      salt: '870',
    ),
  ),
  Meal(
    id: 'm10',
    category: 'c1',
    title: 'Chick-fil-A Cool Wrap',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Entrees/wrap_pdp.png',
    nutritionInfo: BurgerInfo(
      calories: '660',
      totalFat: '45',
      saturatedFat: '9',
      transFat: '0',
      carbs: '32',
      fiber: '14',
      sugar: '5',
      protein: '43',
      salt: '1420',
    ),
  ),
  Meal(
    id: 'm11',
    category: 'c1',
    title: 'Cobb Salad',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Salads%26wraps/cobbSalad_nug_pdp.png',
    nutritionInfo: BurgerInfo(
      calories: '850',
      totalFat: '61',
      saturatedFat: '13',
      transFat: '0',
      carbs: '34',
      fiber: '5',
      sugar: '10',
      protein: '42',
      salt: '2220',
    ),
  ),
  Meal(
    id: 'm12',
    category: 'c1',
    title: 'Spicy Southwest Salad',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Salads%26wraps/sswSalad_spicyGrilled_pdp.png',
    nutritionInfo: BurgerInfo(
      calories: '690',
      totalFat: '49',
      saturatedFat: '10',
      transFat: '0',
      carbs: '29',
      fiber: '8',
      sugar: '8',
      protein: '33',
      salt: '1570',
    ),
  ),
  Meal(
    id: 'm13',
    category: 'c1',
    title: 'Chick-fil-A Waffle Potato Fries',
    imageUrl:
        'https://www.cfacdn.com/img/order/menu/Online/Sides%26treats/Medium_Lowered_1217shoot_1080x1080.png',
    nutritionInfo: BurgerInfo(
      calories: '420',
      totalFat: '24',
      saturatedFat: '4',
      transFat: '0',
      carbs: '45',
      fiber: '5',
      sugar: '1',
      protein: '5',
      salt: '240',
    ),
  ),
  Meal(
    id: 'm14',
    category: 'c2',
    title: 'Charburger',
    imageUrl:
        'https://www.habitburger.com/dbcwp/wp-content/uploads/2020/12/charburger-single-nocheese.png',
    nutritionInfo: BurgerInfo(
      calories: '500',
      totalFat: '31',
      saturatedFat: '9',
      transFat: '1',
      carbs: '32',
      fiber: '2',
      sugar: '4',
      protein: '21',
      salt: '1240',
    ),
  ),
  Meal(
    id: 'm15',
    category: 'c2',
    title: 'Double Charburger',
    imageUrl:
        'https://www.habitburger.com/dbcwp/wp-content/uploads/2020/12/charburger-double.png',
    nutritionInfo: BurgerInfo(
      calories: '730',
      totalFat: '49',
      saturatedFat: '16',
      transFat: '2',
      carbs: '32',
      fiber: '2',
      sugar: '4',
      protein: '37',
      salt: '1300',
    ),
  ),
  Meal(
    id: 'm16',
    category: 'c2',
    title: 'BBQ Bacon Charburger',
    imageUrl:
        'https://www.habitburger.com/dbcwp/wp-content/uploads/2020/12/charburger-bbq-bacon.png',
    nutritionInfo: BurgerInfo(
      calories: '630',
      totalFat: '37',
      saturatedFat: '11',
      transFat: '1',
      carbs: '44',
      fiber: '2',
      sugar: '14',
      protein: '27',
      salt: '2040',
    ),
  ),
  Meal(
    id: 'm17',
    category: 'c2',
    title: 'Teriyaki Charburger',
    imageUrl:
        'https://www.habitburger.com/dbcwp/wp-content/uploads/2020/12/charburger-teriyaki.png',
    nutritionInfo: BurgerInfo(
      calories: '570',
      totalFat: '31',
      saturatedFat: '9',
      transFat: '1',
      carbs: '48',
      fiber: '2',
      sugar: '16',
      protein: '22',
      salt: '1730',
    ),
  ),
  Meal(
    id: 'm18',
    category: 'c2',
    title: 'Portabella Charburger',
    imageUrl:
        'https://www.habitburger.com/dbcwp/wp-content/uploads/2020/12/charburger-portabella.png',
    nutritionInfo: BurgerInfo(
      calories: '820',
      totalFat: '63',
      saturatedFat: '17',
      transFat: '1',
      carbs: '36',
      fiber: '2',
      sugar: '5',
      protein: '24',
      salt: '1910',
    ),
  ),
  Meal(
    id: 'm19',
    category: 'c2',
    title: 'Santa Barbara Charburger on Sourdough',
    imageUrl:
        'https://www.habitburger.com/dbcwp/wp-content/uploads/2020/12/sb-char_v2.png',
    nutritionInfo: BurgerInfo(
      calories: '1210',
      totalFat: '93',
      saturatedFat: '30',
      transFat: '2',
      carbs: '48',
      fiber: '7',
      sugar: '2',
      protein: '48',
      salt: '3220',
    ),
  ),
  Meal(
    id: 'm20',
    category: 'c3',
    title: 'rawcai bowl',
    imageUrl:
        'https://shakesmart.com/wp-content/themes/shakesmart/resources/assets/images/menu/acai-bowl.jpg',
    nutritionInfo: NutritionInfo(
      calories: '221',
      totalFat: '5',
      saturatedFat: '0',
      transFat: '0',
      carbs: '48',
      fiber: '7',
      sugar: '21',
      protein: '2',
    ),
  ),
];