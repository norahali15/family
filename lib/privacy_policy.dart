import 'package:flutter/material.dart';
import 'package:untitled15/profile_page.dart';
import 'package:untitled15/sons_page.dart';
import 'home_page.dart';
import 'login_page.dart';

// Welcome to the Episode 5
class  PrivacyPolicy extends StatelessWidget {
  const  PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
        body: SafeArea(
          child: Padding(
           padding: const EdgeInsets.all(16.0),
            child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      children:const [
                        SelectableText("Family privacy policy",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 8,),
                        SelectableText("When you use Family, you trust us with your personal data.  We are committed to maintaining that trust.  This starts with helping you understand our privacy practices.  The privacy policy hereby explains the rules of the family regarding the collection, use and disclosure of personal data when using our service and the choices regarding that data from users of both the website and the application that is available for free on the Apple Store and Google Play store . Effective date: February 25, 2023",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                        SelectableText("This page is used to inform visitors regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                        SelectableText("If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                        SelectableText("The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Family unless otherwise defined in this Privacy Policy.",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                        SelectableText("زFor a better experience, while using our Service, we may require you to provide us with certain personally identifiable information. The information that we request will be retained by us and used as described in this privacy policy",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                        SelectableText("Changes to This Privacy Policy . We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                        SelectableText("If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at norahali535@gmail.com ",
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(height: 5,),
                      ]
                  )
                ]
    )
    )
    )
    );
  }
}

