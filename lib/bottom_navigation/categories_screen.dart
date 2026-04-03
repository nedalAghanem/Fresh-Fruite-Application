import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Category {
  final String name;
  final int itemCount;
  final String imagePath;

  const Category({
    required this.name,
    required this.itemCount,
    required this.imagePath,
  });
}


class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  int _selectedIndex = 0;

  final List<Category> _categories = const [
    Category(
      name: 'Fruits',
      itemCount: 58,
      imagePath: 'assets/images/rice.svg',
    ),
    Category(
      name: 'Vegetables',
      itemCount: 46,
      imagePath: 'assets/images/rice.svg',
    ),
    Category(
      name: 'Mushroom',
      itemCount: 88,
      imagePath: 'assets/images/rice.svg',
    ),
    Category(
      name: 'Dairy',
      itemCount: 14,
      imagePath: 'assets/images/rice.svg',
    ),
    Category(
      name: 'Oats',
      itemCount: 17,
      imagePath: 'assets/images/rice.svg',
    ),
    Category(
      name: 'Bread',
      itemCount: 33,
      imagePath: 'assets/images/rice.svg',
    ),
    Category(
      name: 'Rice',
      itemCount: 87,
      imagePath: 'assets/images/rice.svg',
    ),
    Category(
      name: 'Eggs',
      itemCount: 23,
      imagePath: 'assets/images/rice.svg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        Expanded(child: _buildGrid()),
      ],
    );
  }


  Widget _buildHeader() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.maybePop(context),
            child: const Icon(
              Icons.arrow_back,
              size: 24,
              color: Colors.black87,
            ),
          ),
          const Expanded(
            child: Text(
              'Categories',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ),
          const SizedBox(width: 24),
        ],
      ),
    );
  }


  Widget _buildGrid() {
    return Container(
      color: const Color(0xFFF0F0F0),
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          childAspectRatio: 1.0,
        ),
        itemCount: _categories.length,
        itemBuilder: (context, index) {
          return _CategoryCard(
            category: _categories[index],
            isSelected: _selectedIndex == index,
            onTap: () => setState(() => _selectedIndex = index),
          );
        },
      ),
    );
  }
}


class _CategoryCard extends StatelessWidget {
  final Category category;
  final bool isSelected;
  final VoidCallback onTap;

  const _CategoryCard({
    required this.category,
    required this.isSelected,
    required this.onTap,
  });

  static const Color _orange = Color(0xFFE07B1A);
  static const Color _selectedBg = Color(0xFFFAB040);

  @override
  Widget build(BuildContext context) {
    final Color bg = isSelected ? _selectedBg : Colors.white;
    final Color textColor = isSelected ? Colors.black87 : _orange;
    final Color subColor = isSelected ? Colors.black54 : Colors.black45;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: isSelected
                  ? _selectedBg.withOpacity(0.45)
                  : Colors.black.withOpacity(0.06),
              blurRadius: isSelected ? 16 : 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              category.imagePath,
              width: 80,
              height: 80,
              colorFilter: ColorFilter.mode(
                isSelected ? Colors.black87 : _orange,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              category.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              '${category.itemCount} Items',
              style: TextStyle(fontSize: 12, color: subColor),
            ),
          ],
        ),
      ),
    );
  }
}
