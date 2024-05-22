import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_app/animal/animal.dart';
import 'package:plant_app/configs/di/service_locator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("HOME Page"),
          ElevatedButton(
            onPressed: () {
              context.go("/productDetail");
            },
            child: const Text("Product Details"),
          ),
          ElevatedButton(
            onPressed: () {
              context.go(
                "/cart",
                extra: {"noOfItems": 200},
              );
            },
            child: const Text("directly cart Page"),
          ),
          ElevatedButton(
            onPressed: () {
              AnimalRepository ar = getIt.get<AnimalRepository>();
              ar.getAnimals();

              ar.setAnimal("Cat");
              ar.getAnimals();
            },
            child: const Text("DI"),
          ),
          ElevatedButton(
            onPressed: () {
              // AnimalRepository ar = AnimalRepository("Tiger");
              AnimalRepository ar = getIt.get<AnimalRepository>();

              ar.getAnimals();
            },
            child: const Text("DI 2"),
          ),
          ElevatedButton(
            onPressed: () {
              // AnimalRepository ar = AnimalRepository("Tiger");
              getIt.get<NewAnimalClass>().getAnimals();

              // nac.getAnimals();
              // nac.setAnimal("Lion");
              // nac.getAnimals();
            },
            child: const Text("registerFactory"),
          ),
        ],
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Produt details"),
          ElevatedButton(
              onPressed: () {
                context.go('/productDetail/cart/55');
              },
              child: const Text("Cart page"))
        ],
      ),
    );
  }
}
