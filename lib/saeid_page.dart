import 'package:flutter/material.dart';
import 'package:untitled15/sons_page.dart';

// Welcome to the Episode 5
class SaeidPage extends StatelessWidget {
  const SaeidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children:const [
                    Image(
                      image: AssetImage("images/b.jpg"),
                      height: 200,
                      width: 150,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Column(
                  children:const [
                    Text(
                      "Name: Saeid",
                      style:TextStyle(fontSize: 20) ,),
                    SizedBox(height: 9,),
                    Text(
                      "ID : 284304763",
                      style:TextStyle(fontSize: 20) ,),
                    SizedBox(height: 9,),
                    SelectableText("https://;slifhskvndio",
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text(
                      "Norah is now 10 minutes away from home",
                      style:TextStyle(fontSize: 20 ),),
                  ],
                ),
                const SizedBox(height: 50,),
                Row(
                  children: [
                    Column(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    const Image(image: AssetImage("images/bb.jpg"),
                      height: 260,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                ListTile(
                  leading: const Icon(Icons.arrow_back_ios),
                  title: const Text(
                    'Back',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const SonsPage(),));
                  },
                ),
                const SizedBox(height:10)
              ],
            ),
          ),
        )
    );
  }
}