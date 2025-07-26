import 'package:flutter/material.dart';

class FurnitureCard extends StatelessWidget {
  final String title;
  final String description;
  final double price;
  final String imageUrl;
  final bool isFavorite;

  const FurnitureCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(description, style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 8),
                Text("\$${price.toString()}",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
