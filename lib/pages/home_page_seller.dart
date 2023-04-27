import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sprint1/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //get info about user
  final user = FirebaseAuth.instance.currentUser!;
  //logout method
  void logOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(onPressed: logOut, icon: const Icon(Icons.logout))
        ],
      ),

      // fix this to what you want in the home page for seller
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SUCCESSFULLY LOGGED IN AS:' + user.email!),
            ElevatedButton(
                child: const Text('Profile Page'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                }),
          ],
        ),
      ),
    );
  }
}

//'SUCCESSFULLY LOGGED IN AS:' + user.email!