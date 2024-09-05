import 'package:fasalaveer/Auth/logout.dart';
import 'package:fasalaveer/MainScreen/comingsoon.dart';
import 'package:fasalaveer/MainScreen/homepage.dart';
import 'package:fasalaveer/MainScreen/profilepage.dart';
import 'package:fasalaveer/MainScreen/settings.dart';
import 'package:fasalaveer/MainScreen/soiltest.dart';
import 'package:flutter/material.dart';

class EquipmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: 35,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.search, color: Colors.black),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 4),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Search',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF132909),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.notifications),
                          color: Color(0xFFD2F8CB),
                          iconSize: 20,
                          onPressed: () {
                            LogoutPage();
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF132909),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.settings),
                          color: Color(0xFFD2F8CB),
                          iconSize: 20,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SettingsPage()),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    // Your previous widgets here...
                    SizedBox(height: 20), // Add space before the new section
                    ToggleButtonSection(),
                    SizedBox(height: 20,),
                    EveryButton(),
                  ],
                )
              ],
            )),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF132909),
              borderRadius: BorderRadius.circular(40),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            HomePage(), // Your Home Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border_outlined,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            // WalletPage(), // Your Wallet Page
                            ComingSoonScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ComingSoonScreen(), // Your Store Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFFDFFC6)),
                      color: Color(0xFF132909),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.storefront,
                      color: Color(0xFFFDFFC6),
                      size: 35,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.pie_chart,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            SoilTest(), // Your Favorite Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xFFFDFFC6),
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ProfilePage(), // Your Profile Page
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          final tween = Tween(begin: begin, end: end);
                          final curvedAnimation =
                              CurvedAnimation(parent: animation, curve: curve);

                          return SlideTransition(
                            position: tween.animate(curvedAnimation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



class ToggleButtonSection extends StatefulWidget {
  @override
  _ToggleButtonSectionState createState() => _ToggleButtonSectionState();
}

class _ToggleButtonSectionState extends State<ToggleButtonSection> {
  List<bool> isSelected = [true, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Equipment Button
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected[0] = true;
              isSelected[1] = false;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected[0] ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Equipment',
              style: TextStyle(
                color: isSelected[0] ? Colors.white : Color(0xFF132909),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        // SizedBox(width: 10),
        OutlinedButton(
          onPressed: () {
            // Add button action here
            print('Add button pressed');
          },
          style: OutlinedButton.styleFrom(
            minimumSize: Size(50, 50),
            padding: EdgeInsets.all(10), // Padding inside the button
            side: BorderSide(
                color: Colors.black, width: 0.5), // Border color and width
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50), // Rounded border
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.add,
                color: Color(0xFF132909),
                size: 20,
              ), // Add icon
            ],
          ),
        ),
        // Labour Button
        GestureDetector(
          onTap: () {
            setState(() {
              isSelected[0] = false;
              isSelected[1] = true;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: isSelected[1] ? Colors.black : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 0.5,
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Labour',
              style: TextStyle(
                color: isSelected[1] ? Colors.white : Color(0xFF132909),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}





class EveryButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      physics: NeverScrollableScrollPhysics(),
      children: [
        buildCard(context, 'Tractor', 'assets/equi/tractor.png', 4.3),
        buildCard(context, 'Seed Drill', 'assets/equi/drill.jpeg', 3.4),
        buildCard(context, 'Threshers', 'assets/equi/trasher.jpeg', 4.3),
        buildCard(context, 'Harvester', 'assets/equi/harvester.jpeg', 3.4),
        buildCard(context, 'Sprayer', 'assets/equi/sprayer.jpeg', 4.0),
        buildCard(context, 'Baler', 'assets/equi/baler.jpeg', 3.4),
      ],
    );
  }

  Widget buildCard(BuildContext context, String title, String imagePath, double rating) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(title: title)),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                    child: Image.asset(
                      imagePath,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 16),
                          SizedBox(width: 4),
                          Text(rating.toString(), style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('New', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Details of $title'),
      ),
    );
  }
}
