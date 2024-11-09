import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Details")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/1.jpg", height: 200, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Axel Arigato", style: TextStyle(fontSize: 24)),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Text("4.5 (200 Reviews)"),
                    ],
                  ),
                  const Text("\$245.00", style: TextStyle(fontSize: 22)),
                  const SizedBox(height: 10),
                  const Text("Size"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [38, 39, 40, 41, 42]
                        .map((size) => ChoiceChip(
                              label: Text(size.toString()),
                              selected: false,
                              onSelected: (selected) {},
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 10),
                  const Text("Description",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const Text(
                      "Engineered to crush any movement-based workout, these fit wonders ensure the utmost comfort."),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add product to cart logic here
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Product added to cart"),
                        ));
                      },
                      child: const Text("Add to Cart"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
