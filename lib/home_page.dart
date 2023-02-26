import 'package:flutter/material.dart';
import 'package:untitled15/privacy_policy.dart';
import 'package:untitled15/profile_page.dart';
import 'package:untitled15/sons_page.dart';
import 'login_page.dart';

// Welcome to the Episode 5
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "images/11.jpg"),
                fit: BoxFit.cover
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                color: Colors.deepPurple,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: NetworkImage(
                              ''
                          ),
                              fit: BoxFit.fill
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
               ListTile(
                leading:const Icon(Icons.person),
                title: const Text(
            'Profile',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (_)=>const ProfilePage(),));
                 },
        ),
               ListTile(
                leading:const Icon(Icons.home),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomePage(),));
                  },
              ),
               ListTile(
                leading: const Icon(Icons.family_restroom),
                title:const Text(
                  'Sons',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const SonsPage(),));
                },
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip_outlined),
                title:const Text(
                  ' PrivacyPolicy',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const PrivacyPolicy(),));
                },
              ),
               ListTile(
                leading: const Icon(Icons.exit_to_app),

                    title: const Text(
                      'Sign Out',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const LoginPage(),));
                },
                  ),
      ],
    ),
        ),
    );
  }
}