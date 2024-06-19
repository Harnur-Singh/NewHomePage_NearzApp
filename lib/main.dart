import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10), // For overall top padding
              _topAddressBar(context),
              SizedBox(height: 20),
              _searchBar(),
              SizedBox(height: 40), // Extra space before the Explore section
              _exploreSection(),
              SizedBox(height: 20),
              _goldenOffer(),
              SizedBox(height: 40),
              _whatsOnYourMindSection(), // Moved down
              _mindCategories(),
              SizedBox(height: 20),
              _referAndEarn(),
              SizedBox(height: 20), // Add other widgets as necessary
            ],
          ),
        ),
      ),
    );
  }

  Widget _topAddressBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.location_on, size: 32, color: Colors.red),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Home", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  Text("Room no 404, Building no 20-21, Gali no 19,...",
                      style: TextStyle(fontSize: 13)
                  )
                ],
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: Colors.lightBlueAccent,
            child: Text(
              'A',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.red),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search "Facial"',
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('               |', style: TextStyle(color: Colors.grey, fontSize: 20)),
                  ],
                ),
                border: InputBorder.none,
              ),
            ),
          ),
          VerticalDivider(color: Colors.grey, thickness: 1),
          Icon(Icons.mic, color: Colors.red),
        ],
      ),
    );
  }

  Widget _exploreSection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(child: Divider(color: Colors.grey)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("EXPLORE THE TRENDING", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
              ),
              Expanded(child: Divider(color: Colors.grey)),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _exploreCard('All services', '20% OFF', 'assets/all.png'),
            _exploreCard('Haircut', 'Up to 40% OFF', 'assets/haircut.png'),
            _exploreCard('Makeup', 'Special Offers', 'assets/makeup.png'),
          ],
        ),
      ],
    );
  }

  Widget _exploreCard(String title, String subtitle, String imagePath) {
    return Container(
      width: 110,
      height: 140,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5, offset: Offset(0, 3))],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(child: Image.asset(imagePath, fit: BoxFit.cover)),
          Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          Text(subtitle, style: TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }

  Widget _goldenOffer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10), // Keep distance from screen edges
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the whole container
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
        border: Border.all(color: Colors.amber, width: 1), // Subtle golden border
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.card_giftcard, color: Colors.amber, size: 24), // Gift icon
                    SizedBox(width: 8),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.yellow, Colors.orange],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        'GOLDEN OFFER',
                        style: TextStyle(
                          color: Colors.brown,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  '14 days of FREE delivery with GOLD & much more',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Button background color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // Rounded corners for the button
              ),
            ),
            child: Text(
              'Claim now',
              style: TextStyle(
                color: Colors.amber, // Text color inside the button
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _whatsOnYourMindSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(child: Divider(color: Colors.grey)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("WHAT SERVICES ARE YOU LOOKING FOR?", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
          ),
          Expanded(child: Divider(color: Colors.grey)),
        ],
      ),
    );
  }

  // Widget _mindCategories() {
  //   List<Map<String, dynamic>> categories = [
  //     {"title": "All Services", "image": "assets/all.png"},
  //     {"title": "Packages", "image": "assets/package.png"},
  //     {"title": "Haircut", "image": "assets/haircut.png"},
  //     {"title": "Body Care", "image": "assets/body.png"},
  //     {"title": "Skin Care", "image": "assets/skin.png"},
  //     {"title": "Shave", "image": "assets/shave.png"},
  //   ];
  //
  //   return Column(
  //     children: [
  //       Text('', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  //       SizedBox(height: 10),
  //       Wrap(
  //         alignment: WrapAlignment.center,
  //         spacing: 20, // Horizontal gap between adjacent chips
  //         runSpacing: 20, // Vertical gap between lines
  //         children: categories.map((category) {
  //           return Container(
  //             width: 100,
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min, // This makes the column height fit its children
  //               children: [
  //                 CircleAvatar(
  //                   backgroundColor: Colors.purpleAccent, // Adjust color to your preference
  //                   radius: 50,
  //                   child: Text(category["title"].substring(0, 1), // Display first letter
  //                       style: TextStyle(fontSize: 20, color: Colors.white)),
  //                 ),
  //                 SizedBox(height: 8),
  //                 Text(category["title"], textAlign: TextAlign.center, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
  //               ],
  //             ),
  //           );
  //         }).toList(),
  //       ),
  //     ],
  //   );
  // }


  Widget _mindCategories() {
    List<Map<String, dynamic>> categories = [
      {"title": "All Services", "image": "assets/all.png"},
      {"title": "Packages", "image": "assets/package.png"},
      {"title": "Haircut", "image": "assets/haircut.png"},
      {"title": "Body Care", "image": "assets/body.png"},
      {"title": "Skin Care", "image": "assets/skin.png"},
      {"title": "Shave", "image": "assets/shave.png"},
    ];

    return Column(
      children: [
        Text('', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Wrap(
          spacing: 20, // gap between adjacent chips
          runSpacing: 20, // gap between lines
          children: categories.map((category) {
            return Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(category["image"]),
                  radius: 50,
                ),
                SizedBox(height: 8),
                Text(category["title"], style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }


  Widget _referAndEarn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: _promoCard(
              title: '\nRefer & earn',
              description: 'FLAT ₹100 Off when your friend makes 1st purchase of Rs 100',
              code: '\nCode: HS00626727',
              buttonLabel: 'Share with friends',
              icon: Icons.card_giftcard,
            ),
          ),
          SizedBox(width: 16), // Spacing between cards
          Expanded(
            child: _promoCard(
              title: '\nSkip the queue',
              description: '\nOrder via the app\n\n\n',
              buttonLabel: 'Order Now',
              icon: Icons.time_to_leave,
            ),
          ),
        ],
      ),
    );
  }

  Widget _promoCard({
    required String title,
    required String description,
    String? code,
    required String buttonLabel,
    required IconData icon,
  }) {
    return Container(
      height: 280,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.brown),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          Text(description),
          if (code != null) Text(code, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.pink[300], // Adjust color to match theme
              foregroundColor: Colors.white, // This replaces the primary property
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(buttonLabel),
          ),
        ],
      ),
    );
  }

}
