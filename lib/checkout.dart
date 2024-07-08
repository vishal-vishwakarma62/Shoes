import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
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
        title: Text('Checkout'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              // height: 100,
              width: double.infinity,
              margin: EdgeInsets.only(left: 25,right: 25),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contact Information',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  ListTile(contentPadding: EdgeInsets.only(left: 10),
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.only(right: 25),
                      // height: 40,
                      // width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12
                      ),
                      child: Icon(Icons.mark_email_read_sharp),
                    ),
                    title: Text('rumenhussen@gmail.com',style: TextStyle(fontSize: 14),),
                    subtitle: Text('Email'),
                    trailing: Icon(Icons.edit,color: Colors.black54,),
                  ),
                  ListTile(contentPadding: EdgeInsets.only(left: 10),
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.only(right: 25),
                      // height: 40,
                      // width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12
                      ),
                      child: Icon(Icons.phone),
                    ),
                    title: Text('+88-692 -764-269',style: TextStyle(fontSize: 14),),
                    subtitle: Text('Phone'),
                    trailing: Icon(Icons.edit,color: Colors.black54,),
                  ),
                  Text('Address',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  Row(
                    children: [
                      Expanded(child: Text('Newahall St 36, London, 12908 - UK',style: TextStyle(fontSize: 16,color: Colors.black54),)),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Image.asset('assets/map.png'),
                  SizedBox(height: 20,),
                  Text('Payment Method',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 10),
                    leading: Container(
                      padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.only(right: 25),
                      // height: 40,
                      // width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12
                      ),
                      child: Icon(Icons.paypal,color: Colors.black,),
                    ),
                    title: Text('Paypal Card',style: TextStyle(fontSize: 14),),
                    subtitle: Text('**** **** 0696 4629'),
                    trailing:  Icon(Icons.keyboard_arrow_down_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text('Subtotal',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                        Text('\$1250.00',style: TextStyle(fontSize: 18))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(child: Text('Shopping',style: TextStyle(fontSize: 18,color: Colors.black54),)),
                        Text('\$40.90',style: TextStyle(fontSize: 18))
                      ],
                    ),
                    SizedBox(height: 30,),
                    DottedLine(
                      dashColor: Colors.black54,
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        Expanded(child: Text('Total Cost',style: TextStyle(fontSize: 18),)),
                        Text('\$1690.99',style: TextStyle(fontSize: 18),)
                      ],
                    ),
                    SizedBox(height: 14,),
                    TextButton(
                      onPressed: (){
                        showDialog(context: context, builder: (context) => AlertDialog(
                          elevation: 6,
                          title: Container(
                            width: 335,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Center(child: Image.asset('assets/woooh.png')),
                                SizedBox(height: 25,),
                                Text('Your Payment Is \nSuccessful',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),textAlign: TextAlign.center,),
                                SizedBox(height: 25,),
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      borderRadius:BorderRadius.circular(30),
                                    color: Colors.blue
                                  ),
                                  child: Text('Back To Shopping',style: TextStyle(fontSize:16,color: Colors.white60),),
                                )
                              ],
                            ),
                          ),
                        ),);
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue
                        ),
                        child: Center(
                          child: Text('Payment',style: TextStyle(color: Colors.white60),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
