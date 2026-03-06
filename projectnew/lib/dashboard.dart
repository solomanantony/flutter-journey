import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  final List<Map<String, String>> products = const [
    {
      "name": "Apple",
      "unit": "Kg",
      "price": "\$20",
      "image":
          "https://cdn-icons-png.flaticon.com/512/415/415733.png"
    },
    {
      "name": "Mango",
      "unit": "Doz",
      "price": "\$30",
      "image":
          "https://cdn-icons-png.flaticon.com/512/590/590685.png"
    },
    {
      "name": "Banana",
      "unit": "Doz",
      "price": "\$10",
      "image":
          "https://cdn-icons-png.flaticon.com/512/590/590684.png"
    },
    {
      "name": "Grapes",
      "unit": "Kg",
      "price": "\$8",
      "image":
          "https://cdn-icons-png.flaticon.com/512/590/590689.png"
    },
    {
      "name": "Watermelon",
      "unit": "Kg",
      "price": "\$25",
      "image":
          "https://cdn-icons-png.flaticon.com/512/590/590679.png"
    },
    {
      "name": "Kiwi",
      "unit": "Pc",
      "price": "\$40",
      "image":
          "https://cdn-icons-png.flaticon.com/512/590/590678.png"
    },
    {
      "name": "Orange",
      "unit": "Doz",
      "price": "\$15",
      "image":
          "https://cdn-icons-png.flaticon.com/512/590/590686.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),

        // Sandwich menu
       // Sandwich Menu
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),

      // Drawer Menu
      drawer: Drawer(
        child: Column(
          children: [

            const UserAccountsDrawerHeader(
              accountName: Text("Jane Anderson"),
              accountEmail: Text("jane.anderson@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://imgs.search.brave.com/P9W-H7vS5eiySDJjcNHG9mKVVB2gPnkpeepYqdz6P2o/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQ5/NjEyOTgzNC9waG90/by93b21lbi1sZWFk/ZXItaW4taGVyLWJ1/c2luZXNzLmpwZz9z/PTYxMng2MTImdz0w/Jms9MjAmYz1rc1c3/S1BnZXRlV0xyNkd0/bm5mVFNCWTM2Wno3/TGY2R1ZVLWt2YlVn/R0VVPQ",
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Dashboard"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.collections),
              title: const Text("New collections"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.comment),
              title: const Text("Comments"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.calendar_today),
              title: const Text("Calendar"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.star),
              title: const Text("Editor's picks"),
              onTap: () {},
            ),

            const Spacer(),

            const Divider(),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),
          ],
        ),
      ),

      // Product List
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: const EdgeInsets.all(10),

              child: Row(
                children: [

                  Image.network(
                    product["image"]!,
                    width: 70,
                  ),

                  const SizedBox(width: 15),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(
                          "Name: ${product["name"]}",
                          style: const TextStyle(fontSize: 16),
                        ),

                        Text("Unit: ${product["unit"]}"),

                        Text("Price: ${product["price"]}"),
                      ],
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                    ),
                    onPressed: () {},

                    child: const Text("Add to Cart"),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}