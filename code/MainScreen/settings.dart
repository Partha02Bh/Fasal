import 'package:fasalaveer/MainScreen/comingsoon.dart';
import 'package:fasalaveer/MainScreen/homepage.dart';
import 'package:fasalaveer/MainScreen/profilepage.dart';
import 'package:fasalaveer/MainScreen/soiltest.dart';
import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Picture
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.yellow,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 16),
                ],
              ),
              SizedBox(height: 20),
        
              // Account Section
              Text(
                "Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),
              _buildSettingsOption(
                context,
                icon: Icons.account_box,
                label: "Edit Profile",
                onTap: () {},
              ),
              _buildSettingsOption(
                context,
                icon: Icons.lock,
                label: "Change Password",
                onTap: () {},
              ),
              _buildSettingsOption(
                context,
                icon: Icons.privacy_tip,
                label: "Privacy",
                onTap: () {},
              ),
        
              // Notification Section
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.notification_add_rounded),
                  SizedBox(width: 8,),
              Text(
                "Notification",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
                ],
              ),
              SizedBox(height: 10,),
              Container(
                        width: double.infinity,
                        height: 0.2, // Thickness of the line
                        color: Colors.black,
                      ),
              
              // SizedBox(height: 5),
              _buildSwitchOption(
                context,
                label: "Notification",
                value: true,
                onChanged: (bool value) {},
              ),
              // _buildSwitchOption(
              //   context,
              //   label: "Updates",
              //   value: false,
              //   onChanged: (bool value) {},
              // ),
              
              // Other Section
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.devices_other),
                  SizedBox(width: 5,),
                  Text(
                "Other",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
                ],
              ),
              
              Container(
                        width: double.infinity,
                        height: 0.2, // Thickness of the line
                        color: Colors.black,
                      ),
              // SizedBox(height: 10),
              _buildSwitchOption(
                context,
                label: "Dark Mode",
                value: false,
                onChanged: (bool value) {},
              ),
              _buildSettingsOption(
                context,
                icon: Icons.language,
                label: "Language",
                trailing: Text("English"),
                onTap: () {},
              ),
              _buildSettingsOption(
                context,
                icon: Icons.flag,
                label: "Region",
                trailing: Text("India"),
                onTap: () {},
              ),
        
              // Logout Button
              SizedBox(height: 10),
              _buildSettingsOption(
                context,
                icon: Icons.logout,
                label: "Logout",
                labelColor: Colors.red,
                iconColor: Colors.red,
                onTap: () {},
              ),
            ],
          ),
        ),
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

  Widget _buildSettingsOption(
    BuildContext context, {
    required IconData icon,
    required String label,
    Widget? trailing,
    required VoidCallback onTap,
    Color iconColor = Colors.black,
    Color labelColor = Colors.black,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Icon(icon, color: iconColor),
            SizedBox(width: 6),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: labelColor,
                ),
              ),
            ),
            if (trailing != null) trailing,
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchOption(
    BuildContext context, {
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Switch(
            value: value,
            activeColor: Colors.black,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
