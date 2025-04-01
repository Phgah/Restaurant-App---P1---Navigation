import 'package:flutter/material.dart';
import 'package:food_app_demo/ widgets/section_header.dart';

class ExplorerScreen extends StatefulWidget {
  const ExplorerScreen({Key? key}) : super(key: key);

  @override
  State<ExplorerScreen> createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
  final TextEditingController _searchController = TextEditingController();

  // Giả lập dữ liệu
  final List<String> topCategories = ["Pizza", "Burgers", "Steak", "Salad"];
  final List<String> popularItems = ["Food 1", "Food 2", "Food 3", "Food 4"];
  final List<String> saleOffItems = ["Food 5 (10% OFF)", "Food 6 (20% OFF)"];

  @override
  void initState() {
    super.initState();
    // Ở đây bạn có thể xin quyền vị trí hoặc hiển thị dialog...
    // requestPermission() hoặc showDialog(...) tuỳ ý
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search bar
              TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  labelText: "Search for meals or area",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  // Xử lý search (demo)
                },
              ),
              const SizedBox(height: 16),
              // Top Categories
              const SectionHeader(title: "Top Categories"),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topCategories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 100,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.orange[100],
                      ),
                      child: Center(
                        child: Text(
                          topCategories[index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Popular Items
              const SectionHeader(title: "Popular Items"),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: popularItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue[100],
                      ),
                      child: Center(
                        child: Text(
                          popularItems[index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              // Sale-off Items
              const SectionHeader(title: "Sale-off Items"),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: saleOffItems.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: const EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red[100],
                      ),
                      child: Center(
                        child: Text(
                          saleOffItems[index],
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
