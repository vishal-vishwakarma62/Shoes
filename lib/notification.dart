import 'package:flutter/material.dart';
class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
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
        title: Text('Notifications'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Text('Clear All',style: TextStyle(color: Colors.blue),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Today',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 10),
                    height: 85,
                    width: 88,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                    ),
                    child: Center(child: Image.asset('assets/shoe2.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(width: 10,),
                        Row(
                          children: [
                            Text('We Have New \nProducts With Offers'),
                            Padding(
                              padding: const EdgeInsets.only(left: 70,bottom: 10),
                              child: Text('6 min ago',style: TextStyle(color: Colors.black54),),
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text('\$364.95'),
                            SizedBox(width: 8,),
                            Text('\$260.00',style: TextStyle(color: Colors.black54),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 10),
                    height: 85,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Center(child: Image.asset('assets/shoe2.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(width: 10,),
                        Row(
                          children: [
                            Text('We Have New \nProducts With Offers'),
                            Padding(
                              padding: const EdgeInsets.only(left: 70,bottom: 10),
                              child: Text('6 min ago',style: TextStyle(color: Colors.black54),),
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text('\$364.95'),
                            SizedBox(width: 8,),
                            Text('\$260.00',style: TextStyle(color: Colors.black54),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Text('Yesterday',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 10),
                    height: 85,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Center(child: Image.asset('assets/shoe2.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(width: 10,),
                        Row(
                          children: [
                            Text('We Have New \nProducts With Offers'),
                            Padding(
                              padding: const EdgeInsets.only(left: 70,bottom: 10),
                              child: Text('4 min ago',style: TextStyle(color: Colors.black54),),
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text('\$364.95'),
                            SizedBox(width: 8,),
                            Text('\$260.00',style: TextStyle(color: Colors.black54),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.all(10),
                    padding: EdgeInsets.only(top: 10),
                    height: 85,
                    width: 88,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white
                    ),
                    child: Center(child: Image.asset('assets/shoe2.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(width: 10,),
                        Row(
                          children: [
                            Text('We Have New \nProducts With Offers'),
                            Padding(
                              padding: const EdgeInsets.only(left: 70,bottom: 10),
                              child: Text('4 min ago',style: TextStyle(color: Colors.black54),),
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text('\$364.95'),
                            SizedBox(width: 8,),
                            Text('\$260.00',style: TextStyle(color: Colors.black54),),
                          ],
                        ),

                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
