import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DesktopGridScreen extends StatelessWidget {
  const DesktopGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.star_outline_sharp),
          onPressed: () {},
        ),
        title: Text("WOOD & HOUSE'S PRODUCTS"),
        actions: [Icon(Icons.shopping_cart)],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 40, right: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[400],
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("246 Results"),
                  Row(
                    children: [
                      Icon(Icons.sort),
                      Text("Sort"),
                      Icon(Icons.filter_list_sharp),
                      Text("Filter"),
                    ],
                  ),
                ],
              ),
              Container(
                height: 500,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.blueAccent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image.asset(
                          //   "assets/images/image.jpg",
                          //   height: 100,
                          //   fit: BoxFit.cover,
                          // ),
                          Expanded(
                            child: Container(
                              height: 150,
                              margin: EdgeInsets.all(10),
                              color: Colors.green[200],
                            ),
                          ),
                          Container(
                            height: 70,
                            padding: const EdgeInsets.only(left: 8, right: 8),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Agent Mug",
                                    strutStyle: StrutStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      "Beutiful made from wood and fits up to 3 plants"),
                                  Text(
                                    "₹1000",
                                    strutStyle: StrutStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 192, 186, 166),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.screen_lock_landscape),
            label: 'Landscape',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}
