import 'package:barbar_app/admin/home/admin_home_screen.dart';
import 'package:barbar_app/screens/home/home.dart';
import 'package:barbar_app/screens/login_screen.dart';

import 'package:barbar_app/screens/profile/payment/payment_selection.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../admin/home/add_shope.dart';
import '../supportpage.dart';

class ProfileScreen extends StatelessWidget {
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/icon.png'),
                  ),
                  ElevatedButton(
                    onPressed: () {

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );

                    },
                    child: Text('Logout'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor),
                  )
                ],
              ),
              const SizedBox(height: 16.0),
              const Text(
                'Asad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                'asad@gmail.com',
                style: GoogleFonts.roboto(
                  color: Colors.grey[600],
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 16.0),
              ListTile(
                leading: const Icon(Icons.payment),
                title: const Text('My Payment Info'),
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PaymentMethodSelectionScreen();
                  }));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('My Profile'),
                onTap: () {
                  // Navigate to My Profile screen
                },
              ),

        
              ListTile(
                leading: const Icon(Icons.help),
                title: const Text('Help'),
                onTap: () {
                  // Navigate to Help screen
                },
              ),
              ListTile(
                leading: const Icon(Icons.share),
                title: const Text('Share'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
              ),
              ElevatedButton(
                onPressed: ()  {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactSupportPage()),
                  );

                },
                child: Text(
                  'Contact Support',
                  style: TextStyle(fontSize: 20),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
