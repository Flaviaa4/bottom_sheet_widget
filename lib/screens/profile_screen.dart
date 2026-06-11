import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void showMoreOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "More Options",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const Divider(),

              ListTile(
                leading: const Icon(Icons.share),
                title: const Text("Share Profile"),
                onTap: () {},
              ),

              ListTile(
                leading: const Icon(
                  Icons.flag,
                  color: Colors.orange,
                ),
                title: const Text("Report User"),
                onTap: () {},
              ),

              ListTile(
                leading: const Icon(
                  Icons.block,
                  color: Colors.red,
                ),
                title: const Text("Block User"),
                onTap: () {},
              ),

              ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.red,
                ),
                title: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.red),
                ),
                onTap: () {},
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildSettingTile(
      IconData icon,
      String title,
      Color color,
      ) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: color),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFEDE7F6),
              child: Icon(
                Icons.person,
                size: 60,
                color: Colors.deepPurple,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Flavienne",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text("UI/UX Designer"),

            const SizedBox(height: 20),

            OutlinedButton(
              onPressed: () {},
              child: const Text("View Profile"),
            ),

            const SizedBox(height: 20),

            buildSettingTile(
              Icons.edit,
              "Edit Profile",
              Colors.blue,
            ),

            buildSettingTile(
              Icons.lock,
              "Privacy Settings",
              Colors.green,
            ),

            buildSettingTile(
              Icons.notifications,
              "Notifications",
              Colors.orange,
            ),

            buildSettingTile(
              Icons.favorite,
              "Favorites",
              Colors.pink,
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => showMoreOptions(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                ),
                child: const Text(
                  "More Options",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}