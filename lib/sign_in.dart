import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class sign_in extends StatefulWidget {
  const sign_in({super.key});

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {

  bool _isChecked = false;

  bool passwordVisible=false;
  int isValue =0;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }
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
            Center(child: Text('Hello Again!',style: TextStyle(fontSize: 22),)),
            Center(child: Text('Welcome Back You’ve Been Missed!',style: TextStyle(fontSize: 16),)),
            SizedBox(height: 45,),
            Text('Email Address',style: TextStyle(fontSize: 18),),
            SizedBox(height: 15,),
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
            SizedBox(height: 40,),
            Text('Password',style: TextStyle(fontSize: 18),),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(10),
                hintText: 'xdcjdj',
                suffixIcon:IconButton(
                  icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(
                          () {
                        passwordVisible = !passwordVisible;
                      },
                    );
                  },
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 240),
              child: Text('Recovery Password',),
            ),
            SizedBox(height: 60,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.blueAccent,
              ),
              child: Center(child: Text('Sign In',style: TextStyle(color: Colors.white),)),
            ),
            SizedBox(height: 30,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black12
              ),
              child:Row(
                children: [
                  SizedBox(width: 100,),
                  Icon(Icons.facebook_sharp,color: Colors.blue,),
                  Text('Sign in with google')
                ],
              ),
            ),
            SizedBox(height: 100,),
            Center(
              child: Text.rich(
                TextSpan(
                  text: 'Don’t have an account?',
                  children: [
                    TextSpan(
                      text: ' Sign Up for free',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600)
                    )
                  ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
