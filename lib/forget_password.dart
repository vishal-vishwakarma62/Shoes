import 'package:flutter/material.dart';
class forget_password extends StatefulWidget {
  const forget_password({super.key});

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios,size: 16,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Center(child: Text('Recovery Password',style: TextStyle(fontSize: 22),)),
            Center(child: Text('Please Enter Your Email Address To \nRecieve a Verification Code',style: TextStyle(fontSize: 16),textAlign: TextAlign.center,)),
            SizedBox(height: 30,),
            Text('Email'),
            SizedBox(height: 8,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(10),
                hintText: 'AlissonBecker@gmail.com',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blueAccent,
              ),
              child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }
}
