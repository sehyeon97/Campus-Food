import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/data/wandas_data.dart';
import 'package:meals/models/wandas/wandas_drinks.dart';
import 'package:meals/providers/drinks_provider.dart';
import 'package:meals/widgets/wandas/drink_details.dart';
import 'package:meals/widgets/wandas/drinks_topbar.dart';

class WandasCoffeeScreen extends ConsumerStatefulWidget {
  const WandasCoffeeScreen({super.key});

  @override
  ConsumerState<WandasCoffeeScreen> createState() => _WandasCoffeeScreenState();
}

class _WandasCoffeeScreenState extends ConsumerState<WandasCoffeeScreen> {
  bool _showScrollToTopButton = false;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      setState(() {
        if (_scrollController.offset >= 50) {
          _showScrollToTopButton = true;
        } else {
          _showScrollToTopButton = false;
        }
      });
    });
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );
  }

  void _onSelectDrinkType(String drinkType) {
    if (drinkType == 'Hot Coffee') {
      _scrollController.animateTo(
        _scrollController.offset + 38,
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else if (drinkType == 'Cold Brew') {
      _scrollController.animateTo(
        _scrollController.offset + 750,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.bounceOut,
      );
    } else if (drinkType == 'Frappucinos') {
      _scrollController.animateTo(
        _scrollController.offset + 1000,
        duration: const Duration(milliseconds: 2000),
        curve: Curves.fastLinearToSlowEaseIn,
      );
    }
  }

  // this is for the individual items
  void _onSelectCoffee(Drink drink) {
    Navigator.of(context).push(MaterialPageRoute(builder: (contxt) {
      return DrinkDetails(
        drink: drink,
      );
    }));
  }

  void _onDeselectCoffee(Drink drink) {
    ref.read(drinksProvider.notifier).removeDrink(drink);
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Drink> drinks = ref.watch(drinksProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Coffee'),
        centerTitle: true,
      ),
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          TopBar(
            onSelectDrinkType: _onSelectDrinkType,
          ),
          const SizedBox(height: 8),
          const Text(
            'Hot Coffee',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              for (Drink drink in hotCoffee)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(drink.title),
                    IconButton(
                      onPressed: () {
                        _onDeselectCoffee(drink);
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                        'x${(drinks.where((otherDrink) => otherDrink.id == drink.id)).length}'),
                    IconButton(
                      onPressed: () {
                        _onSelectCoffee(drink);
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Cold Brew',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              for (Drink drink in coldBrewIcedCoffee)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(drink.title),
                    IconButton(
                      onPressed: () {
                        _onDeselectCoffee(drink);
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                        'x${(drinks.where((otherDrink) => otherDrink.id == drink.id)).length}'),
                    IconButton(
                      onPressed: () {
                        _onSelectCoffee(drink);
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Frappucinos',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              for (Drink drink in frappucinos)
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(drink.title),
                    IconButton(
                      onPressed: () {
                        _onDeselectCoffee(drink);
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                        'x${(drinks.where((otherDrink) => otherDrink.id == drink.id)).length}'),
                    IconButton(
                      onPressed: () {
                        _onSelectCoffee(drink);
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),
            ],
          ),
          const SizedBox(height: 200),
        ],
      ),
      floatingActionButton: _showScrollToTopButton
          ? FloatingActionButton(
              onPressed: () {
                _scrollToTop();
              },
              child: const Icon(Icons.arrow_upward),
            )
          : null,
    );
  }
}
