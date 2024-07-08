import 'package:flutter/material.dart';
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: CircleAvatar(
          radius: 18,
          backgroundColor: Colors.white,
          child: Icon(Icons.arrow_back_ios,size: 16,),
        ),
        centerTitle: true,
        title: Text('Profile',style: TextStyle(fontSize: 16),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Icon(Icons.edit,color: Colors.blue,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/betoo.png')),
            SizedBox(height: 20,),
            Text('Full Name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                hintText: 'Alosson Becker',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
                )
              ),
            ),
            SizedBox(height: 15,),
            Text('Email Address',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'AlossonBecker@gmail.com',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none
                  )
              ),
            ),
            SizedBox(height: 15,),
            Text('Password',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: '**********',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
