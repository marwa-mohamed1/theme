import 'package:flutter/material.dart';
import '../widgets/furniture_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              color: Theme.of(context).primaryColor,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                          'https://i.imgur.com/QCNbOAo.png',
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.menu),
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Hello, Pino',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'What do you want to buy?',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: 'Search',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Categories
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CategoryIcon(icon: Icons.chair, label: "Sofas"),
                CategoryIcon(icon: Icons.bed, label: "Beds"),
                CategoryIcon(icon: Icons.table_bar, label: "Tables"),
                CategoryIcon(icon: Icons.tv, label: "TV Units"),
              ],
            ),
            const SizedBox(height: 16),

            // Items
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: const [
                  FurnitureCard(
                    title: "Modern Sofa",
                    description: "Comfortable and stylish leather sofa",
                    price: 248,
                    imageUrl:
                        "https://t3.ftcdn.net/jpg/01/26/39/40/240_F_126394058_6VKelLGUvMBzvKC9WbgHabZ5eLrNssup.jpg",
                    isFavorite: true,
                  ),
                  FurnitureCard(
                    title: "Elegant Chair",
                    description: "Perfect for your reading corner",
                    price: 99,
                    imageUrl:
                        "https://t4.ftcdn.net/jpg/03/03/92/01/240_F_303920112_Qg6w8w2Brjnqex7AGJpsZlaI8IWa1lzH.jpg",
                    isFavorite: false,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          selectedItemColor: Colors.brown,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
      ),
    );
  }
}

class CategoryIcon extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryIcon({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.brown),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
