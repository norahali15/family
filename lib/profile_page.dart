import 'package:flutter/material.dart';
import 'package:untitled15/privacy_policy.dart';
import 'package:untitled15/sons_page.dart';
import 'home_page.dart';
import 'login_page.dart';

// Welcome to the Episode 5
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title:const Text("Profile"),
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
              title: const Text(
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children:const [

                   Image(
                    image: AssetImage("images/2.jpg"),
                    height: 200,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              Column(
                children:const [
                  Text(
                    "Name: Ali Al-Shahrani",
                    style:TextStyle(fontSize: 25) ,),
                  SizedBox(height: 10,),
                  Text(
                    "ID : 127782910",
                    style:TextStyle(fontSize: 25) ,),
                  SizedBox(height: 10,),
                  Text(
                    "Phone:0556727876",
                    style:TextStyle(fontSize: 25) ,),
                  SizedBox(height: 10,),
                  Text(
                    "Email: alialshah09@gmail.com",
                    style:TextStyle(fontSize: 25) ,),
                ],
              ),
              const SizedBox(height: 50,),
              Row(
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  const Image(image: AssetImage("images/you.jpg"),
                  height: 180,
                    fit: BoxFit.cover,
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}