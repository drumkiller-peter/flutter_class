import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: AnimationLimiter(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 500),
                    child: SlideAnimation(
                      horizontalOffset: 100.0,
                      child: FadeInAnimation(
                        child: const Text(
                          "Hello",
                          style: TextStyle(fontSize: 40),
                        ).animate(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          const Text("Before").animate().swap(
              duration: 900.ms,
              builder: (_, __) => const Text(
                    "After",
                    style: TextStyle(fontSize: 40),
                  )),
        ],
      ),
    );
//       body: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text("HOME Page"),
//             ElevatedButton(
//               onPressed: () {
//                 context.go("/productDetail");
//               },
//               child: const Text("Product Details"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 context.go(
//                   "/cart",
//                   extra: {"noOfItems": 200},
//                 );
//               },
//               child: const Text("directly cart Page"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 AnimalRepository ar = getIt.get<AnimalRepository>();
//                 ar.getAnimals();

//                 ar.setAnimal("Cat");
//                 ar.getAnimals();
//               },
//               child: const Text("DI"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // AnimalRepository ar = AnimalRepository("Tiger");
//                 AnimalRepository ar = getIt.get<AnimalRepository>();

//                 ar.getAnimals();
//               },
//               child: const Text("DI 2"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 // AnimalRepository ar = AnimalRepository("Tiger");
//                 getIt.get<NewAnimalClass>().getAnimals();

//                 // nac.getAnimals();
//                 // nac.setAnimal("Lion");
//                 // nac.getAnimals();
//               },
//               child: const Text("registerFactory"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 context.push("/animation");
//               },
//               child: const Text("Animation Page"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 context.push("/animationExample");
//               },
//               child: const Text("Animation Example"),
//             ),
//             Lottie.asset("assets/json/success.json", repeat: false),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProductDetailPage extends StatelessWidget {
//   const ProductDetailPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Product Details"),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text("Produt details"),
//           ElevatedButton(
//               onPressed: () {
//                 context.go('/productDetail/cart/55');
//               },
//               child: const Text("Cart page"))
//         ],
//       ),
    // )
  }
}
